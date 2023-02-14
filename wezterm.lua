local wezterm = require 'wezterm'

return {
	color_scheme = "Catppuccin Frappe",
	font_size = 16.5,
	line_height = 1,
	font = wezterm.font_with_fallback {
		'SF Mono',
		'JetbrainsMono Nerd Font',
	},
	-- window_background_opacity = 0.9,
	window_padding = {
		left = 8,
		right = 8,
		top = 0,
		bottom = 0,
	},
	tab_bar_at_bottom = true,
	use_fancy_tab_bar = false,
	tab_max_width = 999,
	enable_wayland = false,
	audible_bell = 'Disabled',
	show_new_tab_button_in_tab_bar = false,
	hide_tab_bar_if_only_one_tab = true,
	front_end = "WebGpu",
	keys = {
		{
			key = '|',
			mods = 'ALT|SHIFT',
			action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' },
		},
		{
			key = '_',
			mods = 'ALT|SHIFT',
			action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' },
		},
		{
			key = 'j',
			mods = 'ALT|SHIFT',
			action = wezterm.action.ActivatePaneDirection 'Down',
		},
		{
			key = 'k',
			mods = 'ALT|SHIFT',
			action = wezterm.action.ActivatePaneDirection 'Up',
		},
		{
			key = 'h',
			mods = 'ALT|SHIFT',
			action = wezterm.action.ActivatePaneDirection 'Left',
		},
		{
			key = 'l',
			mods = 'ALT|SHIFT',
			action = wezterm.action.ActivatePaneDirection 'Right',
		},
		{
			key = 'F11',
			action = wezterm.action.ToggleFullScreen,
		}
	},
}
