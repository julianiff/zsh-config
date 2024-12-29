local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- Color definitions for tab bar
config.keys = {
	{
		key = "d",
		mods = "CMD",
		action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
	},
	{
		key = "d",
		mods = "CMD|SHIFT",
		action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
	},
	{
		key = "w",
		mods = "CMD",
		action = wezterm.action.CloseCurrentPane({ confirm = false }),
	},
	{ key = "LeftAlt", mods = "", action = wezterm.action({ SendKey = { key = "LeftAlt", mods = "" } }) },
	{
		key = "h",
		mods = "ALT",
		action = wezterm.action.ActivatePaneDirection("Left"),
	},
	{
		key = "l",
		mods = "ALT",
		action = wezterm.action.ActivatePaneDirection("Right"),
	},
	{
		key = "k",
		mods = "ALT",
		action = wezterm.action.ActivatePaneDirection("Up"),
	},
	{
		key = "j",
		mods = "ALT",
		action = wezterm.action.ActivatePaneDirection("Down"),
	},
}

-- Your existing settings
config.color_scheme = "Catppuccin Macchiato"
config.line_height = 1.35
config.font_size = 14
config.font = wezterm.font("Hack")

-- Remap left Option key to Alt
config.send_composed_key_when_left_alt_is_pressed = true
config.send_composed_key_when_right_alt_is_pressed = true

-- Tab bar settings
config.use_fancy_tab_bar = false
config.tab_bar_at_bottom = true
config.tab_max_width = 55

-- Colors for the custom tab bar
local DEFAULT_BG = "#24273a"
config.colors = {
	tab_bar = {
		background = DEFAULT_BG,
		active_tab = {
			bg_color = "#8aadf4",
			fg_color = "#000000",
		},
		inactive_tab = {
			bg_color = "#363a4f",
			fg_color = "#ffffff",
		},
	},
}

wezterm.on("format-tab-title", function(tab, tabs, panes, config, hover, max_width)
	local title = tab.active_pane.title
	local cwd = tab.active_pane.current_working_dir
	local dir = cwd and cwd.file_path or ""

	local dir_name = string.match(dir, "[^/\\]+$") or dir
	return {
		{ Text = " " .. tab.tab_index + 1 .. ": " .. dir_name .. " " },
		{ Background = { Color = DEFAULT_BG } },
		{ Text = " " },
	}
end)
config.window_frame = {
	font_size = 18.0,
}
config.tab_bar_style = {}

return config
