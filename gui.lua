require "config"
--GUI

function legendDropdown(guiLeft)
	local steam = false
	local tech = game.forces.player.technologies
	guiLeft.add{type="frame", name="EMC_frame", caption="Entity: Color", direction="vertical", style="frame"}.add{type="table", name="EMC_table", column_count=2, style="EMC_table_style"}
	local table = guiLeft.EMC_frame.EMC_table
	if tech["logistics"].researched then
		table.add{type="sprite-button", name="b1", tooltip = "All yellow belts, splitters and underground", sprite="entity/transport-belt", style="entity_style"}
		table.add{type="button", name="b1c", style = "map_color_graphic_basic"}
	end
	if tech["logistics-2"].researched then
		table.add{type="sprite-button", name="b2", tooltip = "All red belts, splitters and underground", sprite="entity/fast-transport-belt", style="entity_style"}
		table.add{type="button", name="b2c", style = "map_color_graphic_fast"}
	end
	if tech["logistics-3"].researched then
		table.add{type="sprite-button", name="b3", tooltip = "All blue belts, splitters and underground", sprite="entity/express-transport-belt", style="entity_style"}
		table.add{type="button", name="b3c", style = "map_color_graphic_express"}
	end
	if tech["fluid-handling"].researched then
		table.add{type="sprite-button", name="tank", tooltip = "All pipes, pipe to ground, and storage tanks", sprite="entity/storage-tank", style="entity_style"}
		table.add{type="button", name="tankc", style = "map_color_graphic_ptg"}
	else
		table.add{type="sprite-button", name="pip", tooltip = "All pipes, pipe to ground, and storage tanks", sprite="entity/pipe", style="entity_style"}
		table.add{type="button", name="pipc", style = "map_color_graphic_ptg"}
	end
	if tech["logistic-robotics"].researched or tech["construction-robotics"].researched then
		table.add{type="sprite-button", name="rob", tooltip = "Roboports", sprite="entity/roboport", style="entity_style"}
		table.add{type="button", name="robc", style = "map_color_graphic_port"}
	end
	for modName,_ in pairs(game.active_mods) do
		if modName == "Visible_Bots" then
			if tech["construction-robotics"].researched then
				table.add{type="sprite-button", name="cr", tooltip = "construction robot", sprite="entity/construction-robot", style="entity_style"}
				table.add{type="button", name="crc", style = "visible_bots_construction"}
			end
			if tech["logistic-robotics"].researched then
				table.add{type="sprite-button", name="lr", tooltip = "logistic robot", sprite="entity/logistic-robot", style="entity_style"}
				table.add{type="button", name="lrc", style = "visible_bots_logistic"}
			end
		end
		if modName == "boblogistics" then
			if tech["bob-logistics-4"].researched then
				table.add{type="sprite-button", name="bb4", tooltip = "All Bobs green belts, splitters and underground", sprite = "entity/green-transport-belt", style="entity_style"}
				table.add{type="button", name="bb4c", style = "map_color_graphic_bob_logistics_4"}
			end
			if tech["bob-logistics-5"].researched then
				table.add{type="sprite-button", name="bb5", tooltip = "All Bobs purple belts, splitters and underground", sprite = "item/purple-transport-belt", style="entity_style"}
				table.add{type="button", name="bb5c", style = "map_color_graphic_bob_logistics_5"}
			end
		end
		if modName == "5dim_transport" then
			if tech["logistics-4"].researched then
				table.add{type="sprite-button", name="5db4", tooltip = "All 5Dim green belts, splitters and underground", sprite = "item/5d-mk4-transport-belt", style="entity_style"}
				table.add{type="button", name="5db4c", style = "map_color_graphic_5dim_transport_4"}
			end
			if tech["logistics-5"].researched then
				table.add{type="sprite-button", name="5db5", tooltip = "All 5Dim white belts, splitters and underground", sprite = "item/5d-mk5-transport-belt", style="entity_style"}
				table.add{type="button", name="5db5c", style = "map_color_graphic_5dim_transport_5"}
			end
		end
		if modName == "UraniumPower" then
			if tech["uranium-processing"].researched then
				steam = true
				table.add{type="sprite-button", name="up", tooltip = "Uranium Power", sprite="technology/uranium-processing", style="entity_style"}
				table.add{type="button", name="upcc", style = "map_color_graphic_steam"}
			end
		end
	end
	table.add{type="sprite-button", name="rad", tooltip = "Radar", sprite="entity/radar", style="entity_style"}
	table.add{type="button", name="radc", style = "map_color_graphic_radar"}
	if tech["electric-energy-distribution-2"].researched then
		table.add{type="sprite-button", name="sub", tooltip = "All Electric Poles", sprite="entity/substation", style="entity_style"}
		table.add{type="button", name="subc", style = "map_color_graphic_medium"}
	elseif tech["electric-energy-distribution-1"].researched then
		table.add{type="sprite-button", name="medp", tooltip = "All Electric Poles", sprite="entity/medium-electric-pole", style="entity_style"}
		table.add{type="button", name="medpc", style = "map_color_graphic_medium"}
	else
		table.add{type="sprite-button", name="smp", tooltip = "All Electric Poles", sprite="entity/small-electric-pole", style="entity_style"}
		table.add{type="button", name="smpc", style = "map_color_graphic_medium"}
	end
	if tech["solar-energy"].researched then
		table.add{type="sprite-button", name="pan", tooltip = "Solar Panels", sprite="entity/solar-panel", style= "entity_style"}
		table.add{type="button", name="panc", style = "map_color_graphic_solar"}
	elseif not steam then
		table.add{type="sprite-button", name="eam", tooltip = "Steam Power", sprite="entity/steam-engine", style="entity_style"}
		table.add{type="button", name="eamc", style = "map_color_graphic_steam"}
	end
	guiLeft.EMC_frame.add{type="button", name="close", caption="Close", style="button"}
end
