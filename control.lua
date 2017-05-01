require "config"
require "gui"

local function pprint(msg)
	game.print(tostring(msg))
end

local function versionStringToNumber(s)
	local p1 = string.match(s, "%d+%p%d+")
	local p2 = string.match(s, "%d+", 1 + #p1)
	local n = tonumber(p1..p2)
	return n
end

--[[ --IGNORE THIS CODE
local function findAllBelts(force)
	for _,surface in pairs(game.surfaces) do
		for i, entity in pairs(surface.find_entities_filtered({type = "transport-belt", force = force})) do 
			if global.allBelts ~= nil and entity.valid then
				global.allBelts[#global.allBelts + 1] = entity
			end
		end
	end
end

local function addBeltToGlobal(entity)
	global.allBelts[#global.allBelts + 1] = entity
end

local function removeBeltFromGlobal(entity) --add some debug?
	for i,x in pairs(global.allBelts) do
		if x == entity then
			global.allBelts[i] = nil
		end
	end
end

--]]
local function rechart(msg)
	pprint(msg)
	game.forces.player.rechart()
end
	
local function destroyOldMainGuiButton()
	for _,p in pairs(game.players) do
		if p.gui.top.EMC_legend_Main then
			p.gui.top.EMC_legend_Main.destroy()
		end
		if p.gui.left.EMC_legend_Main then
			p.gui.left.EMC_legend_Main.destroy()
		end
	end
end

--[[ --IGNORE THIS CODE
script.on_init(function()
		pprint("this is config: "..tostring(Belt_Overlay_Functionality))
		if Belt_Overlay_Functionality then
			global.locked_state = false
			global.allBelts = global.allBelts or {}
			if #global.allBelts == 0 then
				findAllBelts(game.players[1].force)
			end
		end
	end
)

script.on_event({defines.events.on_built_entity, defines.events.on_robot_built_entity}, function(event)
		if event.created_entity.type == "transport-belt"  and game.players[event.player_index].force == entity.force then
			addBeltToGlobal(event.created_entity)
		end
	end
)
script.on_event({defines.events.on_preplayer_mined_item, defines.events.on_robot_pre_mined, on_entity_died}, function(event)
		if event.entity.type == "transport-belt"  and game.players[event.player_index].force == entity.force and (adminOnly or/and? game.players[event.player_index].admin) --- then
			removeBeltFromGlobal(event.entity)
		end
	end
)

script.on_event({defines.events.on_player_created, defines.events.on_player_joined_game}, function(event)
		if Belt_Overlay_Functionality then
			if global.allBelts == nil then
				global.allBelts = global.allBelts or {}
			end
			if #global.allBelts == 0 then
				findAllBelts(game.players[event.player_index].force)
			end
		end
		destroyOldMainGuiButton()
	end
)--]]

script.on_event(defines.events.on_gui_click, function(event)
		if event.element.name == "close" then
			event.element.parent.destroy()
		end
		
--[[ --IGNORE THIS CODE
		if event.element.name == "see_on_map" and not locked_state then --lock for ~2minutes after a player clicks on it
			--call crafting here?
				pprint("this is the number of belts: "..#global.allBelts)
		end--]]
	end
)

script.on_event(defines.events.on_research_finished, function()
		for _, p in pairs(game.players) do
			local guiLeft = p.gui.left
			if guiLeft.EMC_frame then
				guiLeft.EMC_frame.destroy()
				legendDropdown(guiLeft)
			end
		end
	end
)

--redraws map to update colors when mod is installed on old save games.
script.on_configuration_changed(function(data)
		if data.mod_changes ~= nil and data.mod_changes["Enhanced_Map_Colors"] ~= nil then
			if data.mod_changes["Enhanced_Map_Colors"].old_version == nil then -- saved game, no mod
				rechart("No Enhanced Map Colors previously installed, calling rechart for player ")
			elseif versionStringToNumber(data.mod_changes.Enhanced_Map_Colors.old_version) <= 1.401 then --save game, old mod version --last color change 0.15.x --should be one version less than current?
				rechart("Old Enhanced Map Colors version previously installed, calling rechart for player ")
				if versionStringToNumber(data.mod_changes.Enhanced_Map_Colors.old_version) <= 1.39 then --save game, old mod version 
					destroyOldMainGuiButton() --not really needed
				end
			end
		end
	end
)

script.on_event("EMC-Hotkey", function(event) --open/close gui legend
		local guiLeft = game.players[event.player_index].gui.left
		if guiLeft["EMC_frame"] == nil then
			legendDropdown(guiLeft)
		else
			guiLeft["EMC_frame"].destroy()
		end
	end
)