function gadget:GetInfo()
  return {
    name = "Beam Lightning Crackling Effect",
    desc = "Wraps crackling lightning around the live Rift Opener beam",
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
local beamArc = WeaponDefNames.rift_beam_arc
if not riftOpener or not beamArc then
  return false
end

local BEAM_ID = riftOpener.id
local ARC_ID = beamArc.id
local ORBIT_RADIUS = riftOpener.visuals.thickness + 9
local SEGMENTS = 6
local SEGMENT_ANGLE = 2 * math.pi / SEGMENTS
local ARC_INTERVAL = 2
local ARC_TTL = 3

local spGetGameFrame = Spring.GetGameFrame
local spGetProjectilePosition = Spring.GetProjectilePosition
local spGetProjectileVelocity = Spring.GetProjectileVelocity
local spSpawnProjectile = Spring.SpawnProjectile

function gadget:Initialize()
  local watchProjectile = Script.SetWatchProjectile or Script.SetWatchWeapon
  watchProjectile(BEAM_ID, true)
end

function gadget:ProjectileCreated(projectileID, ownerID, weaponDefID)
  if weaponDefID ~= BEAM_ID then
    return
  end

  local frame = spGetGameFrame()
  if (frame + (ownerID or 0)) % ARC_INTERVAL ~= 0 then
    return
  end

  -- For Recoil's hitscan projectiles, velocity is the muzzle-to-impact vector.
  local x, y, z = spGetProjectilePosition(projectileID)
  local dx, dy, dz = spGetProjectileVelocity(projectileID)
  if not x or not dx then
    return
  end

  local length = math.sqrt(dx * dx + dy * dy + dz * dz)
  if length < 1 then
    return
  end
  local ax, ay, az = dx / length, dy / length, dz / length

  -- Construct an orthonormal basis around the current beam, even for steep shots.
  local sx, sy, sz = az, 0, -ax
  local sideLength = math.sqrt(sx * sx + sz * sz)
  if sideLength < 0.001 then
    sx, sy, sz = 0, -az, ay
    sideLength = math.sqrt(sy * sy + sz * sz)
  end
  sx, sy, sz = sx / sideLength, sy / sideLength, sz / sideLength
  local ux, uy, uz = ay * sz - az * sy, az * sx - ax * sz, ax * sy - ay * sx

  local phase = (frame + (ownerID or 0)) * 0.35
  local previous
  for step = 0, SEGMENTS do
    local fraction = step / SEGMENTS
    local angle = phase + step * SEGMENT_ANGLE
    local side = math.cos(angle) * ORBIT_RADIUS
    local up = math.sin(angle) * ORBIT_RADIUS
    local point = {
      x + dx * fraction + (sx * side + ux * up),
      y + dy * fraction + (sy * side + uy * up),
      z + dz * fraction + (sz * side + uz * up),
    }
    if previous then
      spSpawnProjectile(ARC_ID, {
        pos = previous,
        ["end"] = point,
        ttl = ARC_TTL,
      })
    end
    previous = point
  end
end
