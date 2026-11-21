function gadget:GetInfo()
  return {
    name = "Rift Cascade Damage",
    desc = "Branches from a Rift Opener impact into delayed explosions",
    author = "vjikholg",
    date = "2025",
    license = "GNU GPL v2 or later",
    layer = 0,
    enabled = true,
  }
end

if not gadgetHandler:IsSyncedCode() then
  return false
end

local riftOpener = WeaponDefNames.tlldmc_tlldmc
local purpleLightning = WeaponDefNames.purple_lightning
if not riftOpener or not purpleLightning then
  return false
end

local RIFT_WEAPON_ID = riftOpener.id
local LIGHTNING_WEAPON_ID = purpleLightning.id
local RIFT_WEAPON_SLOT = 1
local WANTED_WEAPONS = { RIFT_WEAPON_ID }

local MAX_TARGETS = 20
local CASCADE_RADIUS = 1000
local LINK_RADIUS = 400
local BLAST_RADIUS = 165
local BLAST_DAMAGE = 1000
local ARC_SPEED = 24 -- elmos per game frame
local ARC_HEIGHT = 12
local ARC_BEND = 14
local ARC_TTL = 6

local spAddUnitDamage = Spring.AddUnitDamage
local spAreTeamsAllied = Spring.AreTeamsAllied
local spGetGameFrame = Spring.GetGameFrame
local spGetGroundHeight = Spring.GetGroundHeight
local spGetUnitIsDead = Spring.GetUnitIsDead
local spGetUnitPosition = Spring.GetUnitPosition
local spGetUnitsInCylinder = Spring.GetUnitsInCylinder
local spGetUnitTeam = Spring.GetUnitTeam
local spGetUnitWeaponState = Spring.GetUnitWeaponState
local spSpawnCEG = Spring.SpawnCEG
local spSpawnProjectile = Spring.SpawnProjectile

local emitters = {}
local activeBranches = {}

local function SurfaceHeight(x, z)
  return math.max(0, spGetGroundHeight(x, z))
end

local function EnemyPosition(unitID, sourceTeam)
  local team = spGetUnitTeam(unitID)
  if team and not spAreTeamsAllied(sourceTeam, team) and not spGetUnitIsDead(unitID) then
    return spGetUnitPosition(unitID)
  end
end

local function IsNearer(unitID, distanceSquared, candidate)
  return not candidate
    or distanceSquared < candidate.distanceSquared
    or (distanceSquared == candidate.distanceSquared and unitID < candidate.unitID)
end

local function QueueBranch(cascade, x, z, target, frame)
  local distance = math.sqrt(target.distanceSquared)
  local bendScale = math.min(0.25, ARC_BEND / math.max(distance, 1))
  cascade.selected[target.unitID] = true
  cascade.targetCount = cascade.targetCount + 1
  activeBranches[#activeBranches + 1] = {
    cascade = cascade,
    targetID = target.unitID,
    startFrame = frame,
    travelFrames = math.max(1, math.ceil(distance / ARC_SPEED)),
    startX = x,
    startZ = z,
    bendX = (target.z - z) * bendScale,
    bendZ = (x - target.x) * bendScale,
    lastX = x,
    lastZ = z,
    endX = target.x,
    endZ = target.z,
  }
end

local function Fork(cascade, x, z, frame)
  local remaining = MAX_TARGETS - cascade.targetCount
  if remaining == 0 then
    return
  end

  local nearest, secondNearest
  local units = spGetUnitsInCylinder(x, z, LINK_RADIUS) or {}
  for _, unitID in ipairs(units) do
    if not cascade.selected[unitID] then
      local ux, uy, uz = EnemyPosition(unitID, cascade.sourceTeam)
      if ux then
        local dx, dz = ux - x, uz - z
        local fromOriginX, fromOriginZ = ux - cascade.originX, uz - cascade.originZ
        local distanceSquared = dx * dx + dz * dz
        if distanceSquared <= LINK_RADIUS * LINK_RADIUS
          and fromOriginX * fromOriginX + fromOriginZ * fromOriginZ <= CASCADE_RADIUS * CASCADE_RADIUS
          and math.abs(uy - SurfaceHeight(ux, uz)) <= BLAST_RADIUS
        then
          -- Keep the two closest unclaimed targets without sorting the entire query.
          if IsNearer(unitID, distanceSquared, nearest) then
            secondNearest = nearest
            nearest = { unitID = unitID, x = ux, z = uz, distanceSquared = distanceSquared }
          elseif remaining > 1 and IsNearer(unitID, distanceSquared, secondNearest) then
            secondNearest = { unitID = unitID, x = ux, z = uz, distanceSquared = distanceSquared }
          end
        end
      end
    end
  end

  if nearest then
    QueueBranch(cascade, x, z, nearest, frame)
    if remaining > 1 and secondNearest then
      QueueBranch(cascade, x, z, secondNearest, frame)
    end
  end
end

local function Detonate(branch, frame)
  local cascade = branch.cascade
  local x, z = branch.endX, branch.endZ
  local y = SurfaceHeight(x, z)
  spSpawnCEG("purple_explosion", x, y, z, 0, 1, 0)

  -- The blast stays at the marked position. A moving target can outrun it.
  local ux, uy, uz = EnemyPosition(branch.targetID, cascade.sourceTeam)
  if ux then
    local dx, dy, dz = ux - x, uy - y, uz - z
    if dx * dx + dy * dy + dz * dz <= BLAST_RADIUS * BLAST_RADIUS then
      local ownerID = cascade.emitter.unitID
      local attackerID = ownerID and spGetUnitTeam(ownerID) == cascade.sourceTeam and ownerID
      spAddUnitDamage(branch.targetID, BLAST_DAMAGE, 0, attackerID or -1, -1)
    end
  end

  Fork(cascade, x, z, frame)
end

function gadget:Initialize()
  local watchExplosion = Script.SetWatchExplosion or Script.SetWatchWeapon
  watchExplosion(RIFT_WEAPON_ID, true)
end

function gadget:Explosion_GetWantedWeaponDef()
  return WANTED_WEAPONS
end

function gadget:Explosion(weaponDefID, x, _, z, ownerID)
  if weaponDefID ~= RIFT_WEAPON_ID or not ownerID then
    return
  end

  local sourceTeam = spGetUnitTeam(ownerID)
  local reloadFrame = spGetUnitWeaponState(ownerID, RIFT_WEAPON_SLOT, "reloadFrame")
  if not sourceTeam or not reloadFrame then
    return
  end

  local emitter = emitters[ownerID]
  if not emitter then
    emitter = { unitID = ownerID }
    emitters[ownerID] = emitter
  end

  -- BeamLaser generates an Explosion per pulse, with one reload frame per salvo.
  if emitter.reloadFrame == reloadFrame then
    return
  end
  emitter.reloadFrame = reloadFrame

  local cascade = {
    emitter = emitter,
    sourceTeam = sourceTeam,
    originX = x,
    originZ = z,
    selected = {},
    targetCount = 0,
  }
  spSpawnCEG("purple_explosion", x, SurfaceHeight(x, z), z, 0, 1, 0)
  Fork(cascade, x, z, spGetGameFrame())
end

function gadget:UnitDestroyed(unitID)
  local emitter = emitters[unitID]
  if emitter then
    emitter.unitID = nil
    emitters[unitID] = nil
  end
end

function gadget:GameFrame(frame)
  local i = 1
  while i <= #activeBranches do
    local branch = activeBranches[i]
    local travel = frame - branch.startFrame
    if travel > 0 then
      local progress = math.min(1, travel / branch.travelFrames)
      local x = branch.startX + (branch.endX - branch.startX) * progress
      local z = branch.startZ + (branch.endZ - branch.startZ) * progress
      if progress < 1 then
        -- Bend the short segments across the path while keeping both endpoints fixed.
        local bend = math.sin(travel * 2.4)
        x = math.max(0, math.min(Game.mapSizeX, x + branch.bendX * bend))
        z = math.max(0, math.min(Game.mapSizeZ, z + branch.bendZ * bend))
      end
      local lastX, lastZ = branch.lastX, branch.lastZ
      if x ~= lastX or z ~= lastZ then
        spSpawnProjectile(LIGHTNING_WEAPON_ID, {
          pos = { lastX, SurfaceHeight(lastX, lastZ) + ARC_HEIGHT, lastZ },
          ["end"] = { x, SurfaceHeight(x, z) + ARC_HEIGHT, z },
          ttl = ARC_TTL,
        })
      end
      branch.lastX, branch.lastZ = x, z

      if travel >= branch.travelFrames then
        activeBranches[i] = activeBranches[#activeBranches]
        activeBranches[#activeBranches] = nil
        Detonate(branch, frame)
      else
        i = i + 1
      end
    else
      i = i + 1
    end
  end
end
