--[[ --IGNORE THIS CODE
-- Highlight colored items
--Belts
local EMC_belt_highlight_y_item = table.deepcopy(data.raw["item"]["transport-belt"])
EMC_belt_highlight_y_item.name = "EMC_belt_highlight_y"
EMC_belt_highlight_y_item.place_result = "EMC_belt_highlight_y"
EMC_belt_highlight_y_item.flags = {"hidden"}

local EMC_belt_highlight_r_item = table.deepcopy(data.raw["item"]["fast-transport-belt"])
EMC_belt_highlight_r_item.name = "EMC_belt_highlight_r"
EMC_belt_highlight_r_item.place_result = "EMC_belt_highlight_r"
EMC_belt_highlight_r_item.flags = {"hidden"}

local EMC_belt_highlight_b_item = table.deepcopy(data.raw["item"]["express-transport-belt"])
EMC_belt_highlight_b_item.name = "EMC_belt_highlight_b"
EMC_belt_highlight_b_item.place_result = "EMC_belt_highlight_b"
EMC_belt_highlight_b_item.flags = {"hidden"}

--Furnaces
local EMC_furnace_highlight_steel_item = table.deepcopy(data.raw["item"]["steel-furnace"])
EMC_furnace_highlight_steel_item.name = "EMC_furnace_highlight_steel"
EMC_furnace_highlight_steel_item.place_result = "EMC_furnace_highlight_steel"
EMC_furnace_highlight_steel_item.flags = {"hidden"}

local EMC_furnace_highlight_electric_item = table.deepcopy(data.raw["item"]["electric-furnace"])
EMC_furnace_highlight_electric_item.name = "EMC_furnace_highlight_electric"
EMC_furnace_highlight_electric_item.place_result = "EMC_furnace_highlight_electric"
EMC_furnace_highlight_electric_item.flags = {"hidden"}

--Turrets
local EMC_turret_highlight_gun_item = table.deepcopy(data.raw["item"]["gun-turret"])
EMC_turret_highlight_gun_item.name = "EMC_turret_highlight_gun"
EMC_turret_highlight_gun_item.place_result = "EMC_turret_highlight_gun"
EMC_turret_highlight_gun_item.flags = {"hidden"}

local EMC_turret_highlight_flame_item = table.deepcopy(data.raw["item"]["flamethrower-turret"])
EMC_turret_highlight_flame_item.name = "EMC_turret_highlight_flame"
EMC_turret_highlight_flame_item.place_result = "EMC_turret_highlight_flame"
EMC_turret_highlight_flame_item.flags = {"hidden"}

local EMC_turret_highlight_laser_item = table.deepcopy(data.raw["item"]["laser-turret"])
EMC_turret_highlight_laser_item.name = "EMC_turret_highlight_laser"
EMC_turret_highlight_laser_item.place_result = "EMC_turret_highlight_laser"
EMC_turret_highlight_laser_item.flags = {"hidden"}

data:extend(
	{
	  EMC_belt_highlight_y_item,
		EMC_belt_highlight_r_item,
		EMC_belt_highlight_b_item,
		EMC_furnace_highlight_steel_item,
		EMC_furnace_highlight_electric_item,
		EMC_turret_highlight_gun_item,
		EMC_turret_highlight_flame_item,
		EMC_turret_highlight_laser_item,
	}
)

-- Bobs
if data.raw["item"]["green-transport-belt"] ~= nil then
	local EMC_belt_highlight_green_item = table.deepcopy(data.raw["item"]["green-transport-belt"])
	EMC_belt_highlight_green_item.name = "EMC_belt_highlight_y"
	EMC_belt_highlight_green_item.place_result = "EMC_belt_highlight_y"
	EMC_belt_highlight_green_item.flags = {"hidden"}
	data:extend({EMC_belt_highlight_green_item})
end
if data.raw["item"]["purple-transport-belt"] ~= nil then
	local EMC_belt_highlight_purple_item = table.deepcopy(data.raw["item"]["purple-transport-belt"])
	EMC_belt_highlight_purple_item.name = "EMC_belt_highlight_y"
	EMC_belt_highlight_purple_item.place_result = "EMC_belt_highlight_y"
	EMC_belt_highlight_purple_item.flags = {"hidden"}
	data:extend({EMC_belt_highlight_purple_item})
end
-- 5dim
if data.raw["item"]["5d-mk4-transport-belt"] ~= nil then
	local EMC_belt_highlight_mk4_item = table.deepcopy(data.raw["item"]["5d-mk4-transport-belt"])
	EMC_belt_highlight_mk4_item.name = "EMC_belt_highlight_y"
	EMC_belt_highlight_mk4_item.place_result = "EMC_belt_highlight_y"
	EMC_belt_highlight_mk4_item.flags = {"hidden"}
	data:extend({EMC_belt_highlight_mk4_item})
end
if data.raw["item"]["5d-mk5-transport-belt"] ~= nil then
	local EMC_belt_highlight_mk5_item = table.deepcopy(data.raw["item"]["5d-mk5-transport-belt"])
	EMC_belt_highlight_mk5_item.name = "EMC_belt_highlight_y"
	EMC_belt_highlight_mk5_item.place_result = "EMC_belt_highlight_y"
	EMC_belt_highlight_mk5_item.flags = {"hidden"}
	data:extend({EMC_belt_highlight_mk5_item})
end
--[[
-- DyTech
if data.raw["item"]["super-transport-belt"] ~= nil then
	local EMC_belt_highlight_super_item = table.deepcopy(data.raw["item"]["super-transport-belt"])
	EMC_belt_highlight_super_item.name = "EMC_belt_highlight_y"
	EMC_belt_highlight_super_item.place_result = "EMC_belt_highlight_y"
	EMC_belt_highlight_super_item.flags = {"hidden"}
	data:extend({EMC_belt_highlight_super_item})
end
if data.raw["item"]["extreme-transport-belt"] ~= nil then
	local EMC_belt_highlight_extreme_item = table.deepcopy(data.raw["item"]["extreme-transport-belt"])
	EMC_belt_highlight_extreme_item.name = "EMC_belt_highlight_y"
	EMC_belt_highlight_extreme_item.place_result = "EMC_belt_highlight_y"
	EMC_belt_highlight_extreme_item.flags = {"hidden"}
	data:extend({EMC_belt_highlight_extreme_item})
end--]]
--]]