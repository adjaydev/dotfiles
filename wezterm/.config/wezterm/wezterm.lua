local wezterm = require("wezterm")
local config = {}

config.font = wezterm.font("JetBrainsMono Nerd Font")
config.color_scheme = "Catppuccin Mocha"
config.window_background_opacity = 0.85
config.window_decorations = "RESIZE"
config.enable_tab_bar = false
config.window_padding = {
	left = 40,
	right = 40,
	top = 40,
	bottom = 40,
}

config.keys = {
	{
		key = "r",
		mods = "CMD|SHIFT",
		action = wezterm.action.ReloadConfiguration,
	},
}

config.ssh_domains = {
	{
		name = "rabbitmq",
		remote_address = "4.231.18.84",
		username = "functioneelbeheer",
	},
}

return config
