
-- [register cmd] eShop commands

-- [test]
minetest.register_chatcommand("eBuy",
{
	params = "<item> <count>",
	description = "eShop buy command",
	--privs = {eShop=true},
	func = function(name, param)
		if param then
			local player = minetest.get_player_by_name(name)
			if not player or not player:is_player() then
				return false, "No player."
			end
			--give_item_to_player(player, param[1])
			return true, "eShop test - Command executed with param. "..param
		end

		return true, "eShop test - Command executed without param."
	end,
})

-- [info]
minetest.register_chatcommand("eSell",
{
	params = "<item> <count>",
	description = "eShop sell command",
	--privs = {eShop=true},
	func = function(name, param)
		if param then
			return true, "eShop test - Command executed with param. "..param
		end

		return true, "eShop test - Command executed without param."
	end,
})
