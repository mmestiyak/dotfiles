local wezterm = require("wezterm")

local config = wezterm.config_builder()

-- Rose Pine color scheme
config.colors = {
	foreground = "#e0def4",
	background = "#191724",
	cursor_bg = "#524f67",
	cursor_border = "#524f67",
	cursor_fg = "#e0def4",
	selection_bg = "#2a2837",
	selection_fg = "#e0def4",
	ansi = {
		"#26233a", -- Black
		"#eb6f92", -- Red
		"#31748f", -- Green
		"#f6c177", -- Yellow
		"#9ccfd8", -- Blue
		"#c4a7e7", -- Magenta
		"#ebbcba", -- Cyan
		"#e0def4", -- White
	},
	brights = {
		"#6e6a86", -- Bright Black
		"#eb6f92", -- Bright Red
		"#31748f", -- Bright Green
		"#f6c177", -- Bright Yellow
		"#9ccfd8", -- Bright Blue
		"#c4a7e7", -- Bright Magenta
		"#ebbcba", -- Bright Cyan
		"#e0def4", -- Bright White
	},
}

config.font = wezterm.font("UbuntuMono Nerd Font Mono")
config.font_size = 20

config.enable_tab_bar = false
config.window_decorations = "RESIZE"
config.window_background_opacity = 0.75
config.macos_window_background_blur = 10

config.keys = {
	{
		key = "+",
		mods = "CTRL",
		action = wezterm.action.IncreaseFontSize,
	},
	{
		key = "-",
		mods = "CTRL",
		action = wezterm.action.DecreaseFontSize,
	},
	{
		key = "0",
		mods = "CTRL",
		action = wezterm.action.ResetFontSize,
	},
}

return config
