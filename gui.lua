--GUI

function legendDropdown(guiLeft) --clean up required? --add filters? is that possible?
	local tech = game.forces.player.technologies
	guiLeft.add{type="frame", name="EMC_frame", caption="Entity: Color", direction="vertical", style="frame_style"}
	local frame = guiLeft.EMC_frame
	frame.style.maximal_height = 50
	frame.style.minimal_width = 110
	frame.style.maximal_width = 130
	if tech["logistics"].researched then
		frame.add{type="sprite-button", name="b1", sprite="entity/transport-belt", style="entity_style"}
		frame.add{type="button", name="b1c", style = "map_color_graphic_basic"}
		frame.style.maximal_height = frame.style.maximal_height + 45
	end
	if tech["logistics-2"].researched then
		frame.add{type="sprite-button", name="b2", sprite="entity/fast-transport-belt", style="entity_style"}
		frame.add{type="button", name="b2c", style = "map_color_graphic_fast"}
		frame.style.maximal_height = frame.style.maximal_height + 45
	end
	if tech["logistics-3"].researched then
		frame.add{type="sprite-button", name="b3", sprite="entity/express-transport-belt", style="entity_style"}
		frame.add{type="button", name="b3c", style = "map_color_graphic_express"}
		frame.style.maximal_height = frame.style.maximal_height + 45
	end
	if tech["fluid-handling"].researched then
		frame.add{type="sprite-button", name="storage-tank", tooltip = "All pipes, pipe to ground, and storage tanks", sprite="entity/storage-tank", style="entity_style"}
		frame.add{type="button", name="storage-tankc", style = "map_color_graphic_ptg"}
		frame.style.maximal_height = frame.style.maximal_height + 45
	else
		frame.add{type="sprite-button", name="p", tooltip = "All pipes, pipe to ground, and storage tanks", sprite="entity/pipe", style="entity_style"}
		frame.add{type="button", name="pc", style = "map_color_graphic_ptg"}
		frame.style.maximal_height = frame.style.maximal_height + 45
	end
	if tech["logistic-robotics"].researched or tech["construction-robotics"].researched then
		frame.add{type="sprite-button", name="ro", sprite="entity/roboport", style="entity_style"}
		frame.add{type="button", name="roc", style = "map_color_graphic_port"}
		frame.style.maximal_height = frame.style.maximal_height + 45
	end
	for modName,_ in pairs(game.active_mods) do
		if modName == "Visible_Bots" then
			if tech["construction-robotics"].researched then
				frame.add{type="sprite-button", name="cr", tooltip = "construction robot", sprite="entity/construction-robot", style="entity_style"}
				frame.add{type="button", name="crc", style = "visible_bots_construction"}
				frame.style.maximal_height = frame.style.maximal_height + 45
			end
			if tech["logistic-robotics"].researched then
				frame.add{type="sprite-button", name="lr", tooltip = "logistic robot", sprite="entity/logistic-robot", style="entity_style"}
				frame.add{type="button", name="lrc", style = "visible_bots_logistic"}
				frame.style.maximal_height = frame.style.maximal_height + 45
			end
		end
		if modName == "boblogistics" then
			if tech["bob-logistics-4"].researched then
				frame.add{type="sprite-button", name="bb4", sprite = "entity/green-transport-belt", style="entity_style"}
				frame.add{type="button", name="bb4c", style = "map_color_graphic_bob_logistics_4"}
				frame.style.maximal_height = frame.style.maximal_height + 45
			end
			if tech["bob-logistics-5"].researched then
				frame.add{type="sprite-button", name="bb5", sprite = "item/purple-transport-belt", style="entity_style"}
				frame.add{type="button", name="bb5c", style = "map_color_graphic_bob_logistics_5"}
				frame.style.maximal_height = frame.style.maximal_height + 45
			end
		end
		if modName == "5dim_transport" then
			if tech["logistics-4"].researched then
				frame.add{type="sprite-button", name="5db4", sprite = "item/5d-mk4-transport-belt", style="entity_style"}
				frame.add{type="button", name="5db4c", style = "map_color_graphic_5dim_transport_4"}
				frame.style.maximal_height = frame.style.maximal_height + 45
			end
			if tech["logistics-5"].researched then
				frame.add{type="sprite-button", name="5db5", sprite = "item/5d-mk5-transport-belt", style="entity_style"}
				frame.add{type="button", name="5db5c", style = "map_color_graphic_5dim_transport_5"}
				frame.style.maximal_height = frame.style.maximal_height + 45
			end
		end
		if modName == "MAIN-DyTech-Machine" then
			if tech["logistics-4"].researched then
				frame.add{type="sprite-button", name="dTb4", sprite = "item/super-transport-belt", style="entity_style"}
				frame.add{type="button",  name="dTb4c", style = "map_color_graphic_DyTech_super_4"}
				frame.style.maximal_height = frame.style.maximal_height + 45
			end
			if tech["logistics-5"].researched then
				frame.add{type="sprite-button", name="dTb5", sprite = "item/extreme-transport-belt", style="entity_style"}
				frame.add{type="button", name="dTb5c", style = "map_color_graphic_DyTech_extreme_5"}
				frame.style.maximal_height = frame.style.maximal_height + 45
			end
		end
	end
	frame.add{type="sprite-button", name="r", sprite="entity/radar", style="entity_style"}
	frame.add{type="button", name="rc", style = "map_color_graphic_radar"}
	frame.style.maximal_height = frame.style.maximal_height + 45
	if tech["electric-energy-distribution-2"].researched then
		frame.add{type="sprite-button", name="s", tooltip = "All Electric Poles", sprite="entity/substation", style="entity_style"}
		frame.add{type="button", name="sc", style = "map_color_graphic_medium"}
		frame.style.maximal_height = frame.style.maximal_height + 45
	elseif tech["electric-energy-distribution-1"].researched then
		frame.add{type="sprite-button", name="m", tooltip = "All Electric Poles", sprite="entity/medium-electric-pole", style="entity_style"}
		frame.add{type="button", name="mc", style = "map_color_graphic_medium"}
		frame.style.maximal_height = frame.style.maximal_height + 45
	else
		frame.add{type="sprite-button", name="s", sprite="entity/small-electric-pole", style="entity_style"}
		frame.add{type="button", name="sc", style = "map_color_graphic_medium"}
		frame.style.maximal_height = frame.style.maximal_height + 45
	end
	if tech["solar-energy"].researched then
		frame.add{type="sprite-button", name="pan", sprite="entity/solar-panel", style= "entity_style"} 
		frame.add{type="button", name="panc", style = "map_color_graphic_solar"}
		frame.style.maximal_height = frame.style.maximal_height + 45
	else
		frame.add{type="sprite-button", name="eam", sprite="entity/steam-engine", style="entity_style"}
		frame.add{type="button", name="eamc", style = "map_color_graphic_solar"}
		frame.style.maximal_height = frame.style.maximal_height + 45
	end
	frame.add{type="button", name="close", caption="Close", style="button_style"}
	frame.style.maximal_height = frame.style.maximal_height + 50
end