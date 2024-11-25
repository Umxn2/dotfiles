local wezterm = require("wezterm")
local config = {}
config.term = "wezterm"
config.colors = {
	background = "#191919",
	foreground = "#ffffff",
	cursor_border = "#a8deef",
	cursor_bg = "#a8deef",
	cursor_fg = "black",
	selection_fg = "#ffffff",
	selection_bg = "#372f39",
	ansi = {
		"#000000", -- black
		"#ff759b", -- red
		"#baf59f", -- green
		"#fae4a3", -- yellow
		"#6fc5ff", -- blue
		"#ffadef", -- magenta
		"#6fc5ff",
		"#ffffff",
	},
	brights = {
		"#bbbbbb",
		"#ff759b",
		"#baf59f",
		"#fae4a3",
		"#6fc5ff",
		"#ffadef",
		"#6fc5ff",
		"#ffffff",
	},
}
config.foreground_text_hsb = {
	hue = 1.0,
	saturation = 1.00,
	brightness = 1.00,
}
config.dpi = 144.0
config.bold_brightens_ansi_colors = false
config.max_fps = 120
config.font = wezterm.font("JetBrainsMono Nerd Font", { stretch = "Expanded", weight = "Medium" })
config.font_size = 16
config.window_decorations = "RESIZE"
config.window_close_confirmation = "NeverPrompt"
config.adjust_window_size_when_changing_font_size = false
config.window_padding = {
	left = 0,
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
config.initial_rows = 55
config.pane_focus_follows_mouse = true
config.freetype_load_target = "Light"
config.freetype_render_target = "HorizontalLcd"
config.automatically_reload_config = true
return config
