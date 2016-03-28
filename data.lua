-- changes color of all electric poles
for k, v in pairs(data.raw["electric-pole"]) do
	v.map_color = {r = 0.75, g = 0.75, b = 0.75, a = 1}
end

-- changes color of power generators
data.raw["generator"]["steam-engine"].map_color = {r = 0.0, g = 0.35, b = 0.15, a = 1}
data.raw["solar-panel"]["solar-panel"].map_color = {r = 0.0, g = 0.35, b = 0.15, a = 1}

-- changes color of belts
data.raw["transport-belt"]["basic-transport-belt"].friendly_map_color = {r = .98, g = .73, b = 0}
data.raw["transport-belt"]["fast-transport-belt"].friendly_map_color = {r = .98, g = .27, b = .06}
data.raw["transport-belt"]["express-transport-belt"].friendly_map_color = {r = .15, g = .67, b = .71}