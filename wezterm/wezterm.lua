local wezterm = require("wezterm")
local config = {}
config.term = "wezterm"
--config.colors = {
--	background = "#191919",
--	foreground = "#ffffff",
--	cursor_border = "#a8deef",
--	cursor_bg = "#a8deef",
--	cursor_fg = "black",
--	selection_fg = "#ffffff",
--	selection_bg = "#372f39",
--	ansi = {
--		"#000000", -- black
--		"#ff759b", -- red
--		"#baf59f", -- green
--		"#fae4a3", -- yellow
--		"#6fc5ff", -- blue
--		"#ffadef", -- magenta
--		"#6fc5ff",
--		"#ffffff",
--	},
--	brights = {
--		"#bbbbbb",
--		"#ff759b",
--		"#baf59f",
--		"#fae4a3",
--		"#6fc5ff",
--		"#ffadef",
--		"#6fc5ff",
--		"#ffffff",
--	},
--}
config.color_scheme = "Gruvbox Material (Gogh)"
config.colors = {
	cursor_border = "#ddc7a1",
	cursor_bg = "#ddc7a1",
	background = "#1b1b1b",
}
config.foreground_text_hsb = {
	hue = 1.0,
	saturation = 1.00,
	--	brightness = 1.40,
}
--config.window_frame = {
--	border_left_width = "0.15cell",
--	border_right_width = "0.15cell",
--	border_bottom_height = "0.05cell",
--	border_top_height = "0.05cell",
--	border_left_color = "#ffffff",
--	border_right_color = "#ffffff",
--	border_bottom_color = "#ffffff",
--	border_top_color = "#ffffff",
--}
config.dpi = 144.0
config.bold_brightens_ansi_colors = true
config.max_fps = 120
config.font = wezterm.font("IosevkaTerm Nerd Font Mono", { weight = "DemiBold" })
config.font_size = 18.5
config.window_decorations = "RESIZE"
config.window_close_confirmation = "NeverPrompt"
config.adjust_window_size_when_changing_font_size = false
config.window_padding = {
	left = 5,
	right = 0,
	top = 0,
	bottom = 0,
}
--local dimmer = { brightness = 0.3 }
--config.background = {
--	{
--		source = {
--			File = "Users/umang/.config/assets/wallpaper.jpeg",
--		},
--		hsb = dimmer,
--		attachment = { Parallax = 0.1 },
--	},
--}
--config.custom_block_glyphs = false
config.enable_scroll_bar = false
config.enable_tab_bar = false
--config.window_background_opacity = 0.95
config.initial_cols = 175
config.initial_rows = 40
config.pane_focus_follows_mouse = true
config.freetype_render_target = "HorizontalLcd"
config.automatically_reload_config = true
return config
