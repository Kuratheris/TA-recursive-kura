local GetUnitCommands = Spring.GetUnitCommands

-- Older engines expose the count as a special case of GetUnitCommands.
return Spring.GetUnitCommandCount or function(unitID)
	return GetUnitCommands(unitID, 0)
end
