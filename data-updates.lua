--Bob's Belts
if data.raw["transport-belt"]["green-transport-belt"] ~= nil then
	data.raw["transport-belt"]["green-transport-belt"].friendly_map_color = {r = .07, g = 1.0, b = .62}
end 

if data.raw["transport-belt"]["purple-transport-belt"] ~= nil then
	data.raw["transport-belt"]["purple-transport-belt"].friendly_map_color = {r = .97, g = .07, b = 1.0}
end

--Electric Poles including those in Bob's mods
for _, v in pairs(data.raw["electric-pole"]) do
	v.map_color = {r = 0.75, g = 0.75, b = 0.75, a = 1}
end

--Solar including Bob's Solar
for _, v in pairs(data.raw["solar-panel"]) do
	v.map_color = {r = 0.0, g = 0.35, b = 0.15, a = 1}
end


--Steam steam including Bob's Steam
for _, v in pairs(data.raw["generator"]) do
	v.map_color = {r = 0.0, g = 0.35, b = 0.15, a = 1}
end