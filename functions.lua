
-- [register functions]

local give_item_to_player = function(player, item)
	local inv = player:get_inventory()
	if inv:add_item("main", item) then
	return true
	end
	return false
end
