local wezterm = require 'wezterm'
local keys = require 'lua/keys'

return {
	color_scheme = "Catppuccin Macchiato",
	font_size = 19,
	window_background_opacity = 1,
	font = wezterm.font_with_fallback {
		{
			family = 'Cascadia Code',
			weight = 'Regular',
			harfbuzz_features = { 'ss01' }
		},
		{ family = 'Symbols Nerd Font', scale = 0.8 },
		{ family = 'Noto Color Emoji',  scale = 0.8 },
	},
	font_rules = {},
	default_cursor_style = 'BlinkingUnderline',
	inactive_pane_hsb = {
		brightness = 0.8,
	},
	cursor_blink_rate = 400,
	window_padding = { left = 0, right = 0, top = 0, bottom = 0 },
	warn_about_missing_glyphs = false,
	tab_bar_at_bottom = true,
	use_fancy_tab_bar = false,
	tab_max_width = 999,
	-- enable_wayland = false,
	audible_bell = 'Disabled',
	show_new_tab_button_in_tab_bar = false,
	hide_tab_bar_if_only_one_tab = true,
	keys = keys,
	disable_default_key_bindings = true,
	enable_tab_bar = false,
}
