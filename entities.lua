--[[ --IGNORE THIS CODE
-- Highlight colored entities
--Belts
local EMC_belt_highlight_y = table.deepcopy(data.raw["transport-belt"]["transport-belt"])
EMC_belt_highlight_y.friendly_map_color = {r = 0.0, g = 0.0, b = 0.0}
EMC_belt_highlight_y.name = "EMC_belt_highlight_y"

local EMC_belt_highlight_r = table.deepcopy(data.raw["transport-belt"]["fast-transport-belt"])
EMC_belt_highlight_r.friendly_map_color = {r = 0.0, g = 0.0, b = 0.0}
EMC_belt_highlight_r.name = "EMC_belt_highlight_r"

local EMC_belt_highlight_b = table.deepcopy(data.raw["transport-belt"]["express-transport-belt"])
EMC_belt_highlight_b.friendly_map_color = {r = 0.98, g = 0.95, b = 0.81}
EMC_belt_highlight_b.name = "EMC_belt_highlight_b"

--Furnaces
local EMC_furnace_highlight_steel = table.deepcopy(data.raw["furnace"]["steel-furnace"])
EMC_furnace_highlight_steel.friendly_map_color = {r = 0.0, g = 0.0, b = 0.0}  --CHANGE
EMC_furnace_highlight_steel.name = "EMC_furnace_highlight_steel"

local EMC_furnace_highlight_electric = table.deepcopy(data.raw["furnace"]["electric-furnace"])
EMC_furnace_highlight_electric.friendly_map_color = {r = 0.0, g = 0.0, b = 0.0}  --CHANGE
EMC_furnace_highlight_electric.name = "EMC_furnace_highlight_electric"

--Turrets
local EMC_turret_highlight_gun = table.deepcopy(data.raw["ammo-turret"]["gun-turret"])
EMC_turret_highlight_gun.friendly_map_color = {r = 0.98, g = 0.95, b = 0.81}  --CHANGE --250, 242, 207 --too white
EMC_turret_highlight_gun.name = "EMC_turret_highlight_gun"

local EMC_turret_highlight_flame = table.deepcopy(data.raw["fluid-turret"]["flamethrower-turret"])
EMC_turret_highlight_flame.friendly_map_color = {r = 0.0, g = 0.0, b = 0.0}  --CHANGE
EMC_turret_highlight_flame.name = "EMC_turret_highlight_flame"

local EMC_turret_highlight_laser = table.deepcopy(data.raw["electric-turret"]["laser-turret"])
EMC_turret_highlight_laser.friendly_map_color = {r = 0.0, g = 0.0, b = 0.0}  --CHANGE
EMC_turret_highlight_laser.name = "EMC_turret_highlight_laser"

data:extend(
	{	
		EMC_belt_highlight_y,
		EMC_belt_highlight_r,
		EMC_belt_highlight_b,
		EMC_furnace_highlight_steel,
		EMC_furnace_highlight_electric,
		EMC_turret_highlight_gun,
		EMC_turret_highlight_flame,
		EMC_turret_highlight_laser,
	}
)

--bobs
if data.raw["transport-belt"]["green-transport-belt"] ~= nil then
	local EMC_belt_highlight_green = table.deepcopy(data.raw["transport-belt"]["transport-belt"])
	EMC_belt_highlight_green.friendly_map_color = {r = 0.0, g = 0.0, b = 0.0}
	EMC_belt_highlight_green.name = "EMC_belt_highlight_green"
	data:extend({EMC_belt_highlight_green})
end
if data.raw["transport-belt"]["purple-transport-belt"] ~= nil then
	local EMC_belt_highlight_pruple = table.deepcopy(data.raw["transport-belt"]["transport-belt"])
	EMC_belt_highlight_pruple.friendly_map_color = {r = 0.0, g = 0.0, b = 0.0}
	EMC_belt_highlight_pruple.name = "EMC_belt_highlight_pruple"
	data:extend({EMC_belt_highlight_pruple})
end
-- 5dim
if data.raw["transport-belt"]["5d-mk4-transport-belt"] ~= nil then
	local EMC_belt_highlight_mk4 = table.deepcopy(data.raw["transport-belt"]["transport-belt"])
	EMC_belt_highlight_mk4.friendly_map_color = {r = 0.0, g = 0.0, b = 0.0}
	EMC_belt_highlight_mk4.name = "EMC_belt_highlight_mk4"
	data:extend({EMC_belt_highlight_mk4})
end
if data.raw["transport-belt"]["5d-mk5-transport-belt"] ~= nil then
	local EMC_belt_highlight_mk5 = table.deepcopy(data.raw["transport-belt"]["transport-belt"])
	EMC_belt_highlight_mk5.friendly_map_color = {r = 0.0, g = 0.0, b = 0.0}
	EMC_belt_highlight_mk5.name = "EMC_belt_highlight_mk5"
	data:extend({EMC_belt_highlight_mk5})
end

--[[ 
-- DyTech
if data.raw["transport-belt"]["super-transport-belt"] ~= nil then
	local EMC_belt_highlight_super = table.deepcopy(data.raw["transport-belt"]["transport-belt"])
	EMC_belt_highlight_super.friendly_map_color = {r = 0.0, g = 0.0, b = 0.0}
	EMC_belt_highlight_super.name = "EMC_belt_highlight_super"
	data:extend({EMC_belt_highlight_super})
end
if data.raw["transport-belt"]["extreme-transport-belt"] ~= nil then
	local EMC_belt_highlight_extreme = table.deepcopy(data.raw["transport-belt"]["transport-belt"])
	EMC_belt_highlight_extreme.friendly_map_color = {r = 0.0, g = 0.0, b = 0.0}
	EMC_belt_highlight_extreme.name = "EMC_belt_highlight_extreme"
	data:extend({EMC_belt_highlight_extreme})
end

--]]
--]]