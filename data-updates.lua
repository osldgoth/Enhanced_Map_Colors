-- changes color of base belts
data.raw["transport-belt"]["transport-belt"].friendly_map_color = {r = .98, g = .73, b = 0.0} -- 250, 186, 0
data.raw["transport-belt"]["fast-transport-belt"].friendly_map_color = {r = .98, g = .27, b = .06} -- 250, 69, 15 
data.raw["transport-belt"]["express-transport-belt"].friendly_map_color = {r = .15, g = .67, b = .71}  -- 38, 171, 181

--changes color of pipes/storage tank
data.raw["pipe"]["pipe"].friendly_map_color = {r = .29, g = .09, b = .56} -- 74, 23, 143
data.raw["pipe-to-ground"]["pipe-to-ground"].friendly_map_color = {r = .29, g = .09, b = .56}
data.raw["storage-tank"]["storage-tank"].friendly_map_color = {r = .29, g = .09, b = .56}

--Bob's Belts
if data.raw["transport-belt"]["green-transport-belt"] ~= nil then
	data.raw["transport-belt"]["green-transport-belt"].friendly_map_color = {r = .07, g = 1.0, b = .62} -- 18, 255, 158
end 

if data.raw["transport-belt"]["purple-transport-belt"] ~= nil then
	data.raw["transport-belt"]["purple-transport-belt"].friendly_map_color = {r = .97, g = .07, b = 1.0} -- 247, 18, 255
end

--5dim belts
if data.raw["transport-belt"]["5d-mk4-transport-belt"] ~= nil then
	data.raw["transport-belt"]["5d-mk4-transport-belt"].friendly_map_color = {r = 0.08, g = 0.66, b = 0.14} -- 20, 168, 36
end

if data.raw["transport-belt"]["5d-mk5-transport-belt"] ~= nil then
	data.raw["transport-belt"]["5d-mk5-transport-belt"].friendly_map_color = {r = 0.89, g = 0.91, b = 0.96} -- 227, 232, 245
end

--DyTech belts
if data.raw["transport-belt"]["super-transport-belt"] ~= nil then
	data.raw["transport-belt"]["super-transport-belt"].friendly_map_color = {r = 0.81, g = 0.21, b = 0.80} -- 207, 54, 204
end

if data.raw["transport-belt"]["extreme-transport-belt"] ~= nil then
	data.raw["transport-belt"]["extreme-transport-belt"].friendly_map_color = {r = 0.24, g = 0.83, b = 0.24} -- 61, 212, 61
end

--Electric Poles including those in Bob's mods and 5dim
for _, v in pairs(data.raw["electric-pole"]) do
	v.map_color = {r = 0.65, g = 0.65, b = 0.65, a = 1} -- 166, 166, 166
end

--Solar including Bob's Solar and 5dim
for _, v in pairs(data.raw["solar-panel"]) do
	v.map_color = {r = 0.0, g = 0.35, b = 0.15, a = 1} -- 0, 89, 38
end


--Steam steam including Bob's Steam and 5dim
for _, v in pairs(data.raw["generator"]) do
	v.map_color = {r = 0.0, g = 0.35, b = 0.15, a = 1} -- 0, 89, 38
end

--changes color of radars
for _, v in pairs(data.raw["radar"]) do
	v.friendly_map_color = {r = .49, g = .91, b = .75} -- 124, 232, 192
end

--changes color of roboports
for _, v in pairs(data.raw["roboport"]) do
	v.friendly_map_color = {r = .39, g = .53, b = .51} -- 99, 135, 130
end


--[[ possible future changes?
--fluid colors -or use game.fluid_prototypes["lubricant"].base_color.r?
local gas = data.raw.fluid["petroleum-gas"].base_color
local lubri = data.raw.fluid["lubricant"].base_color
local water = data.raw.fluid["water"].base_color
local crude = data.raw.fluid["crude-oil"].base_color
local acid = data.raw.fluid["sulfuric-acid"].base_color
local heavy = data.raw.fluid["heavy-oil"].base_color
local light = data.raw.fluid["light-oil"].base_color


if pipe.fluidbox[1] ~= nil then
	if pipe.fluidbox[1].type == gas then
		
	elseif pipe.fluidbox[1].type == lubri then
		
	elseif pipe.fluidbox[1].type == water then
		
	elseif pipe.fluidbox[1].type == crude then
		
	elseif pipe.fluidbox[1].type == acid then
		
	elseif pipe.fluidbox[1].type == heavy then
		
	elseif pipe.fluidbox[1].type == light then
		
	end
end
	--]]