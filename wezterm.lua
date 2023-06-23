local wezterm = require 'wezterm'
local colors = require('lua/kanagawa-wave').colors()

return {
	colors = colors,
	font_size = 18,
	line_height = 1,
	window_background_opacity = 1,
	font = wezterm.font_with_fallback {
		'Iosevka',
		{
			family = 'Symbols Nerd Font',
			scale = 0.8,
		},
	},
	font_rules = {},
	default_cursor_style = 'BlinkingUnderline',
	cursor_blink_rate = 400,
	window_padding = {
		left = 0,
		right = 0,
		top = 0,
		bottom = 0,
	},
	warn_about_missing_glyphs = false,
	tab_bar_at_bottom = true,
	use_fancy_tab_bar = false,
	tab_max_width = 999,
	-- enable_wayland = false,
	audible_bell = 'Disabled',
	show_new_tab_button_in_tab_bar = false,
	hide_tab_bar_if_only_one_tab = true,
	keys = {
		{
			key = '|',
			mods = 'ALT|SHIFT',
			action = wezterm.action.SplitHorizontal {
				domain = 'CurrentPaneDomain',
			},
		},
		{
			key = '_',
			mods = 'ALT|SHIFT',
			action = wezterm.action.SplitVertical {
				domain = 'CurrentPaneDomain',
			},
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
		},
	},
}
