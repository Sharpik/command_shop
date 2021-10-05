--mod init
local MP = minetest.get_modpath(minetest.get_current_modname())
minetest.log("info", "[command_shop] eShop loaded!")

-- [check the settings]
local command_shop_buy_sell_ratio = minetest.settings:get('command_shop_buy_sell_ratio')
if (command_shop_buy_sell_ratio == nil) then
	command_shop_buy_sell_ratio = 3.0
end

local command_shop_exchange = minetest.settings:get_bool('command_shop_exchange')
if (command_shop_exchange == nil) then
	command_shop_exchange = true
end


-- [register priv] eShop
minetest.register_privilege("eShop", "Ability to cast eShop commands")

-- [includes]
dofile(MP .. "/commands.lua")
