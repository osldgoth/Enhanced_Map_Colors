--redraws map to update colors when mod is installed on old save games.
function pprint(msg)
	for i, p in pairs(game.players) do
		p.print(tostring(msg).." "..i)
	end
end

function containsTech(techName)
	if game.forces.player.technologies[techName] and game.forces.player.technologies[techName].researched then
		return true
	else
		return false
	end
end

--GUI
function mainButton()
	for _, p in pairs(game.players) do
		local guiTop = p.gui.top
		if guiTop["EMC_legend_Main"] == nil then
			guiTop.add{type="button", name="EMC_legend_Main", caption="EMC", tooltip="Map Legend"}
		end
	end
end

function legendDropdown() --clean up required?
	for _, p in pairs(game.players) do
		local guiTop = p.gui.top
		if guiTop["EMC_frame"] == nil then
			guiTop.add{type="frame", name="EMC_frame", caption="Entity: Color", direction="vertical", style="frame_style"}
			--[[if containsTech(item) then
			end--]]
			if game.forces.player.technologies["logistics"].researched then
				guiTop.EMC_frame.add{type="sprite-button", sprite="entity/transport-belt", style="entity_style"}
				guiTop.EMC_frame.add{type="button", style = "map_color_graphic_basic"}
			end
			if game.forces.player.technologies["logistics-2"].researched then
				guiTop.EMC_frame.add{type="sprite-button", sprite="entity/fast-transport-belt", style="entity_style"}
				guiTop.EMC_frame.add{type="button", style = "map_color_graphic_fast"}
			end
			if game.forces.player.technologies["logistics-3"].researched then
				guiTop.EMC_frame.add{type="sprite-button", sprite="entity/express-transport-belt", style="entity_style"}
				guiTop.EMC_frame.add{type="button", style = "map_color_graphic_express"}
			end
			guiTop.EMC_frame.add{type="sprite-button", tooltip = "All pipes, pipe to ground, and storage tanks", sprite="entity/pipe", style="entity_style"}
			guiTop.EMC_frame.add{type="button", style = "map_color_graphic_ptg"}
			if game.forces.player.technologies["logistic-robotics"].researched or game.forces.player.technologies["construction-robotics"].researched then
				guiTop.EMC_frame.add{type="sprite-button", sprite="entity/roboport", style="entity_style"}
				guiTop.EMC_frame.add{type="button", style = "map_color_graphic_port"}
			end
			for modName,_ in pairs(game.active_mods) do
				if modName == "Visible_Bots" then
					if game.forces.player.technologies["construction-robotics"].researched then
						guiTop.EMC_frame.add{type="sprite-button", tooltip = "construction robot", sprite="entity/construction-robot", style="entity_style"}
						guiTop.EMC_frame.add{type="button", style = "visible_bots_construction"}
					end
					if game.forces.player.technologies["logistic-robotics"].researched then
						guiTop.EMC_frame.add{type="sprite-button", tooltip = "logistic robot", sprite="entity/logistic-robot", style="entity_style"}
						guiTop.EMC_frame.add{type="button", style = "visible_bots_logistic"}
					end
				end
				if modName == "boblogistics" then
					if game.forces.player.technologies["bob-logistics-4"].researched then
						guiTop.EMC_frame.add{type="sprite-button", sprite = "entity/green-transport-belt", style="entity_style"}
						guiTop.EMC_frame.add{type="button", style = "map_color_graphic_bob_logistics_4"}
					end
					if game.forces.player.technologies["bob-logistics-5"].researched then
						guiTop.EMC_frame.add{type="sprite-button", sprite = "item/purple-transport-belt", style="entity_style"}
						guiTop.EMC_frame.add{type="button", style = "map_color_graphic_bob_logistics_5"}
					end
				end
				if modName == "5dim_transport" then
					if game.forces.player.technologies["logistics-4"].researched then
						guiTop.EMC_frame.add{type="sprite-button", sprite = "item/5d-mk4-transport-belt", style="entity_style"}
						guiTop.EMC_frame.add{type="button", style = "map_color_graphic_5dim_transport_4"}
					end
					if game.forces.player.technologies["logistics-5"].researched then
						guiTop.EMC_frame.add{type="sprite-button", sprite = "item/5d-mk5-transport-belt", style="entity_style"}
						guiTop.EMC_frame.add{type="button", style = "map_color_graphic_5dim_transport_5"}
					end
				end
				--[[ --till DyTech is updated
				if modName == "MAIN-DyTech-Machine" then
					if game.forces.player.technologies[""].researched then
						guiTop.EMC_frame.add{type="button", sprite = "", style="entity_style"}
						guiTop.EMC_frame.add{type="button",  style = "map_color_graphic_DyTech_super_4"}
					end
					if game.forces.player.technologies[""].researched then
						guiTop.EMC_frame.add{type="button", sprite = "", style="entity_style"}
						guiTop.EMC_frame.add{type="button", style = "map_color_graphic_DyTech_extreme_5"}
					end
				end--]]
			end
			guiTop.EMC_frame.add{type="sprite-button", sprite="entity/radar", style="entity_style"}
			guiTop.EMC_frame.add{type="button", name="radar", style = "map_color_graphic_radar"}
			if game.forces.player.technologies["electric-energy-distribution-2"].researched then
				guiTop.EMC_frame.add{type="sprite-button", tooltip = "All Electric Poles", sprite="entity/substation", style="entity_style"}
				guiTop.EMC_frame.add{type="button", style = "map_color_graphic_medium"}
			elseif game.forces.player.technologies["electric-energy-distribution-1"].researched then
				guiTop.EMC_frame.add{type="sprite-button", tooltip = "All Electric Poles", sprite="entity/medium-electric-pole", style="entity_style"}
				guiTop.EMC_frame.add{type="button", style = "map_color_graphic_medium"}
			else
				guiTop.EMC_frame.add{type="sprite-button", sprite="entity/small-electric-pole", style="entity_style"}
				guiTop.EMC_frame.add{type="button", style = "map_color_graphic_medium"}
			end
			if game.forces.player.technologies["solar-energy"].researched then
				guiTop.EMC_frame.add{type="sprite-button", sprite="entity/solar-panel", style= "entity_style"} 
				guiTop.EMC_frame.add{type="button", style = "map_color_graphic_solar"}
			else
				guiTop.EMC_frame.add{type="sprite-button", sprite="entity/steam-engine", style="entity_style"}
				guiTop.EMC_frame.add{type="button", style = "map_color_graphic_solar"}
			end
			guiTop.EMC_frame.add{type="button", name="close", caption="Close", style="button_style"}
		end
	end
end

script.on_init(mainButton) --for single player games or host of multi-player games

script.on_event(defines.events.on_player_joined_game, mainButton) --for multi-player games (players that join after host) --add rechart? 

script.on_event(defines.events.on_gui_click, function(event) --test open/close for all?
		if event.element.name == "EMC_legend_Main" then
			event.element.destroy()
			legendDropdown()
		elseif event.element.name == "close" then --change to close button
			event.element.parent.destroy()
			mainButton()
		end
	end
)

script.on_event(defines.events.on_research_finished, function(event)
		for _, p in pairs(game.players) do
			local guiTop = p.gui.top
			if guiTop.EMC_frame then
				guiTop.EMC_frame.destroy()
				legendDropdown()
			end
		end
	end
)

script.on_configuration_changed(function(data) --add new_version? --ask for more info on this? or use "for modName,_ in pairs(game.active_mods) do" ?
		if data.mod_changes ~= nil and data.mod_changes["Enhanced_Map_Colors"] ~= nil and data.mod_changes["Enhanced_Map_Colors"].old_version == nil then
			pprint("No Enhanced Map Colors previously installed, calling rechart for player ")
			game.forces.player.rechart()
		elseif data.mod_changes["Enhanced_Map_Colors"].old_version < "1.3.5" then
			pprint("Old Enhanced Map Colors version previously installed, calling rechart for player ")
			game.forces.player.rechart()
		end
	end
)







--[[ future use for pipes
script.on_event(defines.events.on_tick, function(event)
		if event.tick % 3600 == 0 then --once every minute (if my calculations are correct)
			
		end
	end
)

--]]
