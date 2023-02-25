-->===============================================================================================================

Events.OnNewGame.Add(function(player, square)

  local profession = player:getDescriptor():getProfession()
	local itemTable = {}
	local sbVars = SandboxVars.CustomStarterItems
	local professionTable = require("professions")

	function StringToTable(string)
		for word in (string .. ";"):gmatch("([^;]*);") do
			local buffer = word:match "[(]%d+[)]"
			if (buffer ~= nil) then
				for i=tonumber(buffer:match "%d+"),1,-1 do
					local filtered = word:gsub("[(]%d+[)]","")
					table.insert(itemTable, filtered)
				end
			else
				table.insert(itemTable, word)
			end
		end
		AddToInv(itemTable)
	end

	function AddToInv (itemtable)
		for key,value in ipairs(itemtable) do
			player:getInventory():AddItem(value)
		end
	end
	
	for key,value in ipairs(professionTable) do
		if profession == value then
			StringToTable(sbVars[value])
		end
	end

end)
