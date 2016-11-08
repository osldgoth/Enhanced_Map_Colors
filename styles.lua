local default_style = data.raw["gui-style"].default

local function color_graphics(posX, posY)
  return {
    type = "monolith",
		top_monolith_border = 2,
    right_monolith_border = 0,
    bottom_monolith_border = 0,
    left_monolith_border = 0,

    monolith_image = {
      filename = "__Enhanced_Map_Colors__/graphics/colors.png",
      priority = "extra-high-no-scale",
      width = 12,
      height = 8,
      x = posX,
      y = posY,
    },
  }
end

default_style.entity_style = {
  type = "button_style",
  parent = "button_style",
  scalable = true,
  default_font_color={r=0, g=0, b=0},
  width = 38,
  height = 38,
  top_padding = 1,
  right_padding = 0,
  bottom_padding = 0,
  left_padding = 2,
  default_graphical_set =
		{
			type = "composition",
      filename = "__core__/graphics/gui.png",
      priority = "extra-high-no-scale",
      corner_size = {3, 3},
      position = {8, 0}
    },
	hovered_graphical_set = 
		{
      type = "composition",
      filename = "__core__/graphics/gui.png",
      priority = "extra-high-no-scale",
      corner_size = {3, 3},
      position = {8, 0}
    },
	clicked_graphical_set = 
		{
      type = "composition",
      filename = "__core__/graphics/gui.png",
      priority = "extra-high-no-scale",
      corner_size = {3, 3},
      position = {8, 0}
      }
}

default_style.map_color_graphic_basic = {
  type = "button_style",
  parent = "slot_button_style",

	scalable = true,

  top_padding = 1,
  right_padding = 1,
  bottom_padding = 0,
  left_padding = 1,

  width = 48,
  width = 38,

  default_graphical_set = color_graphics( 0,  0),
  hovered_graphical_set = color_graphics( 0,  0),
  clicked_graphical_set = color_graphics( 0,  0)
}

default_style.map_color_graphic_fast = {
  type = "button_style",
  parent = "slot_button_style",

	scalable = true,

  top_padding = 1,
  right_padding = 1,
  bottom_padding = 1,
  left_padding = 1,

  width = 48,
  width = 38,

  default_graphical_set = color_graphics( 0,  9),
  hovered_graphical_set = color_graphics( 0,  9),
  clicked_graphical_set = color_graphics( 0,  9)
}

default_style.map_color_graphic_express = {
  type = "button_style",
  parent = "slot_button_style",

  scalable = true,

  top_padding = 1,
  right_padding = 1,
  bottom_padding = 1,
  left_padding = 1,

  width = 48,
  width = 38,

  default_graphical_set = color_graphics( 0,  18),
  hovered_graphical_set = color_graphics( 0,  18),
  clicked_graphical_set = color_graphics( 0,  18)
}

default_style.map_color_graphic_ptg = {
  type = "button_style",
  parent = "slot_button_style",

  scalable = true,

  top_padding = 1,
  right_padding = 1,
  bottom_padding = 1,
  left_padding = 1,

  width = 48,
  width = 38,

	default_graphical_set = color_graphics( 0,  27),
  hovered_graphical_set = color_graphics( 0,  27),
  clicked_graphical_set = color_graphics( 0,  27)
}

default_style.map_color_graphic_medium = {
  type = "button_style",
  parent = "slot_button_style",

  scalable = true,

  top_padding = 1,
  right_padding = 1,
  bottom_padding = 1,
  left_padding = 1,

	width = 48,
  width = 38,

  default_graphical_set = color_graphics( 0,  36),
  hovered_graphical_set = color_graphics( 0,  36),
  clicked_graphical_set = color_graphics( 0,  36)
}

default_style.map_color_graphic_solar = {
  type = "button_style",
  parent = "slot_button_style",

  scalable = true,

  top_padding = 1,
  right_padding = 1,
  bottom_padding = 1,
  left_padding = 1,

  width = 48,
  width = 38,

  default_graphical_set = color_graphics( 0,  45),
  hovered_graphical_set = color_graphics( 0,  45),
  clicked_graphical_set = color_graphics( 0,  45)
}

default_style.map_color_graphic_port = {
  type = "button_style",
  parent = "slot_button_style",

  scalable = true,

  top_padding = 1,
  right_padding = 1,
  bottom_padding = 1,
  left_padding = 1,

  width = 48,
  width = 38,

  default_graphical_set = color_graphics( 13,  54),
  hovered_graphical_set = color_graphics( 13,  54),
  clicked_graphical_set = color_graphics( 13,  54)
}

default_style.map_color_graphic_radar = {
  type = "button_style",
  parent = "slot_button_style",

  scalable = true,

  top_padding = 1,
  right_padding = 1,
  bottom_padding = 1,
  left_padding = 1,

  width = 48,
  width = 38,

  default_graphical_set = color_graphics( 0,  54),
  hovered_graphical_set = color_graphics( 0,  54),
  clicked_graphical_set = color_graphics( 0,  54)
}

default_style.map_color_graphic_bob_logistics_4 = {
  type = "button_style",
  parent = "slot_button_style",

  scalable = true,

  top_padding = 1,
  right_padding = 1,
  bottom_padding = 1,
  left_padding = 1,

  width = 48,
  width = 38,

  default_graphical_set = color_graphics( 13,  0),
  hovered_graphical_set = color_graphics( 13,  0),
  clicked_graphical_set = color_graphics( 13,  0)
}

default_style.map_color_graphic_bob_logistics_5 = {
  type = "button_style",
  parent = "slot_button_style",

  scalable = true,

  top_padding = 1,
  right_padding = 1,
  bottom_padding = 1,
  left_padding = 1,

  width = 48,
  width = 38,

  default_graphical_set = color_graphics( 13,  9),
  hovered_graphical_set = color_graphics( 13,  9),
  clicked_graphical_set = color_graphics( 13,  9)
}

default_style.map_color_graphic_5dim_transport_4 = {
  type = "button_style",
  parent = "slot_button_style",

  scalable = true,

	top_padding = 1,
  right_padding = 1,
  bottom_padding = 1,
  left_padding = 1,

  width = 48,
  width = 38,

	default_graphical_set = color_graphics( 13,  18),
  hovered_graphical_set = color_graphics( 13,  18),
  clicked_graphical_set = color_graphics( 13,  18)
}
	
default_style.map_color_graphic_5dim_transport_5 = {
  type = "button_style",
  parent = "slot_button_style",

  scalable = true,

  top_padding = 1,
  right_padding = 1,
  bottom_padding = 1,
  left_padding = 1,

  width = 48,
  width = 38,

  default_graphical_set = color_graphics( 13,  27),
  hovered_graphical_set = color_graphics( 13,  27),
  clicked_graphical_set = color_graphics( 13,  27)
}

default_style.map_color_graphic_DyTech_super_4 = {
  type = "button_style",
  parent = "slot_button_style",

  scalable = true,

  top_padding = 1,
  right_padding = 1,
  bottom_padding = 1,
  left_padding = 1,

  width = 48,
  width = 38,

  default_graphical_set = color_graphics( 13,  36),
  hovered_graphical_set = color_graphics( 13,  36),
  clicked_graphical_set = color_graphics( 13,  36)
}

default_style.map_color_graphic_DyTech_extreme_5 = {
  type = "button_style",
  parent = "slot_button_style",

  scalable = true,

  top_padding = 1,
  right_padding = 1,
  bottom_padding = 1,
  left_padding = 1,

  width = 48,
  width = 38,

  default_graphical_set = color_graphics( 13,  45),
  hovered_graphical_set = color_graphics( 13,  45),
  clicked_graphical_set = color_graphics( 13,  45)
}

default_style.visible_bots_construction = {

  type = "button_style",
  parent = "slot_button_style",

  scalable = true,

  top_padding = 1,
  right_padding = 1,
  bottom_padding = 1,
  left_padding = 1,

  width = 48,
  width = 38,

  default_graphical_set = color_graphics( 0,  63),
  hovered_graphical_set = color_graphics( 0,  63),
  clicked_graphical_set = color_graphics( 0,  63)
}

default_style.visible_bots_logistic = {

  type = "button_style",
  parent = "slot_button_style",

  scalable = true,

  top_padding = 1,
  right_padding = 1,
  bottom_padding = 1,
  left_padding = 1,

  width = 48,
  width = 38,

  default_graphical_set = color_graphics( 13,  63),
  hovered_graphical_set = color_graphics( 13,  63),
  clicked_graphical_set = color_graphics( 13,  63)
}