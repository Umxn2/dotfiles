local wezterm = require("wezterm")
local config = {}
config.term = "wezterm"
config.color_scheme = ""
config.colors = {
	background = "#101212",
	foreground = "#ffffff",
	cursor_border = "#fae4a3",
	cursor_bg = "#fae4a3",
	cursor_fg = "black",
	selection_fg = "#ffffff",
	selection_bg = "#372f39",
	ansi = {
		"#bbbbbb",
		"#ff759b",
		"#baf59f",
		"#fae4a3",
		"#6fc5ff",
		"#ffadef",
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
	saturation = 1.05,
	brightness = 1.0,
}
config.dpi = 144.0
config.bold_brightens_ansi_colors = false
config.max_fps = 120
config.font = wezterm.font("JetBrainsMono Nerd Font", { stretch = "Expanded", weight = "DemiBold" })
config.font_size = 18
config.window_decorations = "RESIZE"
config.window_close_confirmation = "NeverPrompt"
config.adjust_window_size_when_changing_font_size = false
config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}
--config.custom_block_glyphs = false
config.enable_scroll_bar = false
config.enable_tab_bar = false
config.window_background_opacity = 0.70
config.initial_cols = 150
config.initial_rows = 42
config.pane_focus_follows_mouse = true
config.freetype_load_target = "Light"
config.freetype_render_target = "HorizontalLcd"
config.automatically_reload_config = true
return config
