local wezterm = require("wezterm")
local config = {}

config.font = wezterm.font("JetBrainsMono Nerd Font")
config.color_scheme = "Catppuccin Mocha"
config.window_background_opacity = 0.85
config.window_decorations = "NONE"

config.keys = {
	{
		key = "r",
		mods = "CMD|SHIFT",
		action = wezterm.action.ReloadConfiguration,
	},
}

return config
