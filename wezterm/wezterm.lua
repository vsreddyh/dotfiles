local wezterm = require("wezterm")

config = wezterm.config_builder()

config = {
	automatically_reload_config = true,
	enable_tab_bar = false,
	window_close_confirmation = "NeverPrompt",
	window_decorations = "RESIZE",
	default_cursor_style = "BlinkingBar",
	color_scheme="Nord (Gogh)",
	font = wezterm.font_with_fallback({"MesloLGM Nerd Font","Noto Color Emoji"}),
	font_size = 16,
	background = {
		{
			source = {
				File = "/home/vishnu/.config/wezterm/Wezterm.jpg",
			},
			hsb = {
				brightness = 0.1,
			},
			width = "100%",
			height = "100%",
			opacity = 0.5,
		}
	},
	window_padding = {
		left = 3,
		right = 3,
		bottom = 3,
		top = 3,
	}
}

return config

