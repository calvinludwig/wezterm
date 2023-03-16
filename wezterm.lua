local wezterm = require 'wezterm'

local catppuccin_frappe = {
	Peach = '#ef9f76',
	Text = '#c6d0f5',
	Subtext1 = '#b5bfe2',
	Subtext0 = '#a5adce',
	Overlay2 = '#949cbb',
	Overlay1 = '#838ba7',
	Overlay0 = '#737994',
	Surface2 = '#626880',
	Surface1 = '#51576d',
	Surface0 = '#414559',
	Base = '#303446',
	Mantle = '#292c3c',
	Crust = '#232634',
}

wezterm.on('update-right-status', function(window)
	window:set_right_status(wezterm.format {
		{ Attribute = { Intensity = 'Bold' } },
		{ Text = wezterm.strftime ' %A, %d %B %Y %I:%M %p ' },
	})
end)

local colors = require('lua/rose-pine').colors()

return {
	colors = colors,
	font_size = 16.5,
	line_height = 1,
	font = wezterm.font_with_fallback {
		'JetBrains Mono',
		'JetbrainsMono Nerd Font',
	},
	window_padding = {
		left = 0,
		right = 0,
		top = 0,
		bottom = 0,
	},
	tab_bar_at_bottom = false,
	use_fancy_tab_bar = false,
	tab_max_width = 999,
	enable_wayland = false,
	audible_bell = 'Disabled',
	show_new_tab_button_in_tab_bar = false,
	hide_tab_bar_if_only_one_tab = true,
	front_end = 'WebGpu',
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
		},
	},
}
