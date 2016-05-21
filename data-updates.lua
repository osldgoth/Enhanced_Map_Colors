--Bob's Belts
if data.raw["transport-belt"]["green-transport-belt"] ~= nil then
	data.raw["transport-belt"]["green-transport-belt"].friendly_map_color = {r = .07, g = 1.0, b = .62}
end 

if data.raw["transport-belt"]["purple-transport-belt"] ~= nil then
	data.raw["transport-belt"]["purple-transport-belt"].friendly_map_color = {r = .97, g = .07, b = 1.0}
end

--5dim belts
if data.raw["transport-belt"]["5d-mk4-transport-belt"] ~= nil then
	data.raw["transport-belt"]["5d-mk4-transport-belt"].friendly_map_color = {r = 0.08, g = 0.66, b = 0.14}
end

if data.raw["transport-belt"]["5d-mk5-transport-belt"] ~= nil then
	data.raw["transport-belt"]["5d-mk5-transport-belt"].friendly_map_color = {r = 0.89, g = 0.91, b = 0.96}
end

--DyTech belts
if data.raw["transport-belt"]["super-transport-belt"] ~= nil then
	data.raw["transport-belt"]["super-transport-belt"].friendly_map_color = {r = 0.81, g = 0.21, b = 0.80}
end

if data.raw["transport-belt"]["extreme-transport-belt"] ~= nil then
	data.raw["transport-belt"]["extreme-transport-belt"].friendly_map_color = {r = 0.24, g = 0.83, b = 0.24}
end

--Electric Poles including those in Bob's mods and 5dim
for _, v in pairs(data.raw["electric-pole"]) do
	v.map_color = {r = 0.65, g = 0.65, b = 0.65, a = 1}
end

--Solar including Bob's Solar and 5dim
for _, v in pairs(data.raw["solar-panel"]) do
	v.map_color = {r = 0.0, g = 0.35, b = 0.15, a = 1}
end


--Steam steam including Bob's Steam and 5dim
for _, v in pairs(data.raw["generator"]) do
	v.map_color = {r = 0.0, g = 0.35, b = 0.15, a = 1}
end