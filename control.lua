function pprint(msg)
	for i, p in pairs(game.players) do
		p.print(tostring(msg).." "..i)
	end
end

--GUI
function mainButton(guiTop)
	if guiTop["EMC_legend_Main"] == nil then --and?
		guiTop.add{type="button", name="EMC_legend_Main", caption="EMC", tooltip="Map Legend"}
	end
end

function legendDropdown(guiTop) --clean up required?
	guiTop.add{type="frame", name="EMC_frame", caption="Entity: Color", direction="vertical", style="frame_style"}
	guiTop.EMC_frame.style.maximal_height = 50
	guiTop.EMC_frame.style.minimal_width = 110
	guiTop.EMC_frame.style.maximal_width = 130
	if game.forces.player.technologies["logistics"].researched then
		guiTop.EMC_frame.add{type="sprite-button", name="b1", sprite="entity/transport-belt", style="entity_style"}
		guiTop.EMC_frame.add{type="button", name="b1c", style = "map_color_graphic_basic"}
		guiTop.EMC_frame.style.maximal_height = guiTop.EMC_frame.style.maximal_height + 45
	end
	if game.forces.player.technologies["logistics-2"].researched then
		guiTop.EMC_frame.add{type="sprite-button", name="b2", sprite="entity/fast-transport-belt", style="entity_style"}
		guiTop.EMC_frame.add{type="button", name="b2c", style = "map_color_graphic_fast"}
		guiTop.EMC_frame.style.maximal_height = guiTop.EMC_frame.style.maximal_height + 45
	end
	if game.forces.player.technologies["logistics-3"].researched then
		guiTop.EMC_frame.add{type="sprite-button", name="b3", sprite="entity/express-transport-belt", style="entity_style"}
		guiTop.EMC_frame.add{type="button", name="b3c", style = "map_color_graphic_express"}
		guiTop.EMC_frame.style.maximal_height = guiTop.EMC_frame.style.maximal_height + 45
	end
	if game.forces.player.technologies["fluid-handling"].researched then
		guiTop.EMC_frame.add{type="sprite-button", name="storage-tank", tooltip = "All pipes, pipe to ground, and storage tanks", sprite="entity/storage-tank", style="entity_style"}
		guiTop.EMC_frame.add{type="button", name="storage-tankc", style = "map_color_graphic_ptg"}
		guiTop.EMC_frame.style.maximal_height = guiTop.EMC_frame.style.maximal_height + 45
	else
		guiTop.EMC_frame.add{type="sprite-button", name="p", tooltip = "All pipes, pipe to ground, and storage tanks", sprite="entity/pipe", style="entity_style"}
		guiTop.EMC_frame.add{type="button", name="pc", style = "map_color_graphic_ptg"}
		guiTop.EMC_frame.style.maximal_height = guiTop.EMC_frame.style.maximal_height + 45
	end
	if game.forces.player.technologies["logistic-robotics"].researched or game.forces.player.technologies["construction-robotics"].researched then
		guiTop.EMC_frame.add{type="sprite-button", name="ro", sprite="entity/roboport", style="entity_style"}
		guiTop.EMC_frame.add{type="button", name="roc", style = "map_color_graphic_port"}
		guiTop.EMC_frame.style.maximal_height = guiTop.EMC_frame.style.maximal_height + 45
	end
	for modName,_ in pairs(game.active_mods) do
		if modName == "Visible_Bots" then
			if game.forces.player.technologies["construction-robotics"].researched then
				guiTop.EMC_frame.add{type="sprite-button", name="cr", tooltip = "construction robot", sprite="entity/construction-robot", style="entity_style"}
				guiTop.EMC_frame.add{type="button", name="crc", style = "visible_bots_construction"}
				guiTop.EMC_frame.style.maximal_height = guiTop.EMC_frame.style.maximal_height + 45
			end
			if game.forces.player.technologies["logistic-robotics"].researched then
				guiTop.EMC_frame.add{type="sprite-button", name="lr", tooltip = "logistic robot", sprite="entity/logistic-robot", style="entity_style"}
				guiTop.EMC_frame.add{type="button", name="lrc", style = "visible_bots_logistic"}
				guiTop.EMC_frame.style.maximal_height = guiTop.EMC_frame.style.maximal_height + 45
			end
		end
		if modName == "boblogistics" then
			if game.forces.player.technologies["bob-logistics-4"].researched then
				guiTop.EMC_frame.add{type="sprite-button", name="bb4", sprite = "entity/green-transport-belt", style="entity_style"}
				guiTop.EMC_frame.add{type="button", name="bb4c", style = "map_color_graphic_bob_logistics_4"}
				guiTop.EMC_frame.style.maximal_height = guiTop.EMC_frame.style.maximal_height + 45
			end
			if game.forces.player.technologies["bob-logistics-5"].researched then
				guiTop.EMC_frame.add{type="sprite-button", name="bb5", sprite = "item/purple-transport-belt", style="entity_style"}
				guiTop.EMC_frame.add{type="button", name="bb5c", style = "map_color_graphic_bob_logistics_5"}
				guiTop.EMC_frame.style.maximal_height = guiTop.EMC_frame.style.maximal_height + 45
			end
		end
		if modName == "5dim_transport" then
			if game.forces.player.technologies["logistics-4"].researched then
				guiTop.EMC_frame.add{type="sprite-button", name="5db4", sprite = "item/5d-mk4-transport-belt", style="entity_style"}
				guiTop.EMC_frame.add{type="button", name="5db4c", style = "map_color_graphic_5dim_transport_4"}
				guiTop.EMC_frame.style.maximal_height = guiTop.EMC_frame.style.maximal_height + 45
			end
			if game.forces.player.technologies["logistics-5"].researched then
				guiTop.EMC_frame.add{type="sprite-button", name="5db5", sprite = "item/5d-mk5-transport-belt", style="entity_style"}
				guiTop.EMC_frame.add{type="button", name="5db5c", style = "map_color_graphic_5dim_transport_5"}
				guiTop.EMC_frame.style.maximal_height = guiTop.EMC_frame.style.maximal_height + 45
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
	guiTop.EMC_frame.add{type="sprite-button", name="r", sprite="entity/radar", style="entity_style"}
	guiTop.EMC_frame.add{type="button", name="rc", style = "map_color_graphic_radar"}
	guiTop.EMC_frame.style.maximal_height = guiTop.EMC_frame.style.maximal_height + 45
	if game.forces.player.technologies["electric-energy-distribution-2"].researched then
		guiTop.EMC_frame.add{type="sprite-button", name="s", tooltip = "All Electric Poles", sprite="entity/substation", style="entity_style"}
		guiTop.EMC_frame.add{type="button", name="sc", style = "map_color_graphic_medium"}
		guiTop.EMC_frame.style.maximal_height = guiTop.EMC_frame.style.maximal_height + 45
	elseif game.forces.player.technologies["electric-energy-distribution-1"].researched then
		guiTop.EMC_frame.add{type="sprite-button", name="m", tooltip = "All Electric Poles", sprite="entity/medium-electric-pole", style="entity_style"}
		guiTop.EMC_frame.add{type="button", name="mc", style = "map_color_graphic_medium"}
		guiTop.EMC_frame.style.maximal_height = guiTop.EMC_frame.style.maximal_height + 45
	else
		guiTop.EMC_frame.add{type="sprite-button", name="s", sprite="entity/small-electric-pole", style="entity_style"}
		guiTop.EMC_frame.add{type="button", name="sc", style = "map_color_graphic_medium"}
		guiTop.EMC_frame.style.maximal_height = guiTop.EMC_frame.style.maximal_height + 45
	end
	if game.forces.player.technologies["solar-energy"].researched then
		guiTop.EMC_frame.add{type="sprite-button", name="pan", sprite="entity/solar-panel", style= "entity_style"} 
		guiTop.EMC_frame.add{type="button", name="panc", style = "map_color_graphic_solar"}
		guiTop.EMC_frame.style.maximal_height = guiTop.EMC_frame.style.maximal_height + 45
	else
		guiTop.EMC_frame.add{type="sprite-button", name="eam", sprite="entity/steam-engine", style="entity_style"}
		guiTop.EMC_frame.add{type="button", name="eamc", style = "map_color_graphic_solar"}
		guiTop.EMC_frame.style.maximal_height = guiTop.EMC_frame.style.maximal_height + 45
	end
	guiTop.EMC_frame.add{type="button", name="close", caption="Close", style="button_style"}
	guiTop.EMC_frame.style.maximal_height = guiTop.EMC_frame.style.maximal_height + 50
end

script.on_init(function()
		for _,p in pairs(game.players) do
			mainButton(p.gui.top)
		end
	end
)

script.on_event(defines.events.on_player_created, function(event)  --for single player games or host of multi-player games
		mainButton(game.players[event.player_index].gui.top)
	end
) 

script.on_event(defines.events.on_player_joined_game, function(event)  --for multi-player games (players that join after host) --add rechart?
		mainButton(game.players[event.player_index].gui.top)
	end
)  

script.on_event(defines.events.on_gui_click, function(event)
		if event.element.name == "EMC_legend_Main" then
			event.element.destroy()
			legendDropdown(game.players[event.player_index].gui.top)
		elseif event.element.name == "close" then
			event.element.parent.destroy()
			mainButton(game.players[event.player_index].gui.top)
		end
	end
)

script.on_event(defines.events.on_research_finished, function()
		for _, p in pairs(game.players) do
			local guiTop = p.gui.top
			if guiTop.EMC_frame then
				guiTop.EMC_frame.destroy()
				legendDropdown(guiTop)
			end
		end
	end
)

--redraws map to update colors when mod is installed on old save games.
script.on_configuration_changed(function(data) --add new_version? --ask for more info on this? or use "for modName,_ in pairs(game.active_mods) do" ?
		if data.mod_changes ~= nil and data.mod_changes["Enhanced_Map_Colors"] ~= nil then
			if data.mod_changes["Enhanced_Map_Colors"].old_version == nil then
				pprint("No Enhanced Map Colors previously installed, calling rechart for player ")
				game.forces.player.rechart()
			elseif data.mod_changes["Enhanced_Map_Colors"].old_version <= "1.3.5" then
				pprint("Old Enhanced Map Colors version previously installed, calling rechart for player ")
				game.forces.player.rechart()
			end
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