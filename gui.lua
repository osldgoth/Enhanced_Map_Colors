require "config"
--GUI

function legendDropdown(guiLeft) --clean up required? --add filters? is that possible?
	local steam = false
	local tech = game.forces.player.technologies
	guiLeft.add{type="frame", name="EMC_frame", caption="Entity: Color", direction="vertical", style="frame_style"}
	local frame = guiLeft.EMC_frame
	frame.style.maximal_height = 50
	frame.style.minimal_width = 110
	frame.style.maximal_width = 130
	if tech["logistics"].researched then
		frame.add{type="sprite-button", name="b1", tooltip = "All yellow belts, splitters and underground", sprite="entity/transport-belt", style="entity_style"}
		frame.add{type="button", name="b1c", style = "map_color_graphic_basic"}
		frame.style.maximal_height = frame.style.maximal_height + 45
	end
	if tech["logistics-2"].researched then
		frame.add{type="sprite-button", name="b2", tooltip = "All red belts, splitters and underground", sprite="entity/fast-transport-belt", style="entity_style"}
		frame.add{type="button", name="b2c", style = "map_color_graphic_fast"}
		frame.style.maximal_height = frame.style.maximal_height + 45
	end
	if tech["logistics-3"].researched then
		frame.add{type="sprite-button", name="b3", tooltip = "All blue belts, splitters and underground", sprite="entity/express-transport-belt", style="entity_style"}
		frame.add{type="button", name="b3c", style = "map_color_graphic_express"}
		frame.style.maximal_height = frame.style.maximal_height + 45
	end
	if tech["fluid-handling"].researched then
		frame.add{type="sprite-button", name="tank", tooltip = "All pipes, pipe to ground, and storage tanks", sprite="entity/storage-tank", style="entity_style"}
		frame.add{type="button", name="tankc", style = "map_color_graphic_ptg"}
		frame.style.maximal_height = frame.style.maximal_height + 45
	else
		frame.add{type="sprite-button", name="pip", tooltip = "All pipes, pipe to ground, and storage tanks", sprite="entity/pipe", style="entity_style"}
		frame.add{type="button", name="pipc", style = "map_color_graphic_ptg"}
		frame.style.maximal_height = frame.style.maximal_height + 45
	end
	if tech["logistic-robotics"].researched or tech["construction-robotics"].researched then
		frame.add{type="sprite-button", name="rob", tooltip = "Roboports", sprite="entity/roboport", style="entity_style"}
		frame.add{type="button", name="robc", style = "map_color_graphic_port"}
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
				frame.add{type="sprite-button", name="bb4", tooltip = "All Bobs green belts, splitters and underground", sprite = "entity/green-transport-belt", style="entity_style"}
				frame.add{type="button", name="bb4c", style = "map_color_graphic_bob_logistics_4"}
				frame.style.maximal_height = frame.style.maximal_height + 45
			end
			if tech["bob-logistics-5"].researched then
				frame.add{type="sprite-button", name="bb5", tooltip = "All Bobs purple belts, splitters and underground", sprite = "item/purple-transport-belt", style="entity_style"}
				frame.add{type="button", name="bb5c", style = "map_color_graphic_bob_logistics_5"}
				frame.style.maximal_height = frame.style.maximal_height + 45
			end
		end
		if modName == "5dim_transport" then
			if tech["logistics-4"].researched then
				frame.add{type="sprite-button", name="5db4", tooltip = "All 5Dim green belts, splitters and underground", sprite = "item/5d-mk4-transport-belt", style="entity_style"}
				frame.add{type="button", name="5db4c", style = "map_color_graphic_5dim_transport_4"}
				frame.style.maximal_height = frame.style.maximal_height + 45
			end
			if tech["logistics-5"].researched then
				frame.add{type="sprite-button", name="5db5", tooltip = "All 5Dim white belts, splitters and underground", sprite = "item/5d-mk5-transport-belt", style="entity_style"}
				frame.add{type="button", name="5db5c", style = "map_color_graphic_5dim_transport_5"}
				frame.style.maximal_height = frame.style.maximal_height + 45
			end
		end
		--[[ will delete in future update
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
		--]]
		if modName == "UraniumPower" then
			if tech["uranium-processing"].researched then
				steam = true
				frame.add{type="sprite-button", name="up", tooltip = "Uranium Power", sprite="technology/uranium-processing", style="entity_style"}
				frame.add{type="button", name="upcc", style = "map_color_graphic_steam"}
				frame.style.maximal_height = frame.style.maximal_height + 45
			end
		end
	end
	frame.add{type="sprite-button", name="rad", tooltip = "Radar", sprite="entity/radar", style="entity_style"}
	frame.add{type="button", name="radc", style = "map_color_graphic_radar"}
	frame.style.maximal_height = frame.style.maximal_height + 45
	if tech["electric-energy-distribution-2"].researched then
		frame.add{type="sprite-button", name="sub", tooltip = "All Electric Poles", sprite="entity/substation", style="entity_style"}
		frame.add{type="button", name="subc", style = "map_color_graphic_medium"}
		frame.style.maximal_height = frame.style.maximal_height + 45
	elseif tech["electric-energy-distribution-1"].researched then
		frame.add{type="sprite-button", name="medp", tooltip = "All Electric Poles", sprite="entity/medium-electric-pole", style="entity_style"}
		frame.add{type="button", name="medpc", style = "map_color_graphic_medium"}
		frame.style.maximal_height = frame.style.maximal_height + 45
	else
		frame.add{type="sprite-button", name="smp", tooltip = "All Electric Poles", sprite="entity/small-electric-pole", style="entity_style"}
		frame.add{type="button", name="smpc", style = "map_color_graphic_medium"}
		frame.style.maximal_height = frame.style.maximal_height + 45
	end
	if tech["solar-energy"].researched then
		frame.add{type="sprite-button", name="pan", tooltip = "Solar Panels", sprite="entity/solar-panel", style= "entity_style"}
		frame.style.maximal_height = frame.style.maximal_height + 45
		if Color_v15_Items then
			frame.add{type="button", name="panc", style = "map_color_graphic_solar"}
		else
			frame.add{type="button", name="panc", style = "map_color_graphic_steam"}
		end
	elseif not steam then
		frame.add{type="sprite-button", name="eam", tooltip = "Steam Power", sprite="entity/steam-engine", style="entity_style"}
		frame.add{type="button", name="eamc", style = "map_color_graphic_steam"}
		frame.style.maximal_height = frame.style.maximal_height + 45
	end
	if Color_v15_Items then
		if tech["electric-energy-accumulators-1"].researched then
			frame.add{type="sprite-button", name="acc", tooltip = "Accumulators", sprite="entity/accumulator", style="entity_style"}
			frame.add{type="button", name="accc", style = "map_color_graphic_accum"}
			frame.style.maximal_height = frame.style.maximal_height + 45
		end
		if tech["laser-turrets"].researched then
			frame.add{type="sprite-button", name="las", tooltip = "Laser Turrets", sprite="technology/laser-turrets", style="entity_style"}
			frame.add{type="button", name="lasc", style = "map_color_graphic_turrets"}
			frame.style.maximal_height = frame.style.maximal_height + 45
		elseif tech["turrets"].researched then
			frame.add{type="sprite-button", name="gun", tooltip = "Gun Turrets", sprite="technology/turrets", style="entity_style"}
			frame.add{type="button", name="gunc", style = "map_color_graphic_turrets"}
			frame.style.maximal_height = frame.style.maximal_height + 45
		end
		if tech["stone-walls"].researched then
			frame.add{type="sprite-button", name="wall", tooltip = "Walls", sprite="technology/stone-walls", style="entity_style"}
			frame.add{type="button", name="wallc", style = "map_color_graphic_wall"}
			frame.style.maximal_height = frame.style.maximal_height + 45
		end
	end
	frame.add{type="button", name="close", caption="Close", style="button_style"}
	frame.style.maximal_height = frame.style.maximal_height + 50
	
	--[[ --IGNORE THIS CODE
	if Belt_Overlay_Functionality then
		frame.add{type="button", name="see_on_map", caption="See on Map",  style="button_style"}
		frame.see_on_map.style.maximal_height = 40
		frame.style.maximal_height = frame.style.maximal_height + 50
	end
	--]]
end


--[[
function crafting()
	--force>recipe>t/f
end
--]]