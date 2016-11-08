require "gui"

local function pprint(msg)
	game.print(tostring(msg))
end


local function rechart(var)
	if var == "new-install" then
		pprint("No Enhanced Map Colors previously installed, calling rechart for player ")
	elseif var == "old-install" then
		pprint("Old Enhanced Map Colors version previously installed, calling rechart for player ")
	end
	game.forces.player.rechart()
end
	
local function destroyOldMainGuiButtons()
	for _,p in pairs(game.players) do
		if p.gui.top.EMC_legend_Main then
			p.gui.top.EMC_legend_Main.destroy()
		end
		if p.gui.left.EMC_legend_Main then
			p.gui.left.EMC_legend_Main.destroy()
		end
	end
end

script.on_event({defines.events.on_player_created, defines.events.on_player_joined_game}, function()
		destroyOldMainGuiButtons()
	end
)

script.on_event(defines.events.on_gui_click, function(event)
		if event.element.name == "close" then
			event.element.parent.destroy()
		end
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
				rechart("new-install")
			elseif data.mod_changes.Enhanced_Map_Colors.old_version <= "1.3.9" then --save game, old mod version 
				destroyOldMainGuiButtons() --not really needed
				if data.mod_changes.Enhanced_Map_Colors.old_version <= "1.3.5" then --save game, old mod version --last color change
					rechart("old-install")
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