local wezterm = require 'wezterm'

wezterm.on('update-right-status', function(window)
	window:set_right_status(wezterm.format {
		{
			Attribute = {
				Intensity = 'Bold',
			},
		},
		{
			Text = wezterm.strftime ' %A, %d %B %Y %I:%M %p ',
		},
	})
end)

local colors = require('lua/kanagawa-dragon').colors()

return {
	colors = colors,
	font_size = 18,
	line_height = 1,
	font = wezterm.font_with_fallback {
		'Iosevka Term',
		{
			family = 'Symbols Nerd Font Mono',
			scale = 0.75,
		},
	},
	default_cursor_style = 'BlinkingUnderline',
	cursor_blink_rate = 400,
	window_padding = {
		left = 0,
		right = 0,
		top = 0,
		bottom = 0,
	},
	tab_bar_at_bottom = true,
	use_fancy_tab_bar = false,
	tab_max_width = 999,
	-- enable_wayland = false,
	audible_bell = 'Disabled',
	show_new_tab_button_in_tab_bar = false,
	hide_tab_bar_if_only_one_tab = false,
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
