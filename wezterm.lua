local wezterm = require 'wezterm'
local colors = require('lua/terafox').colors()
local keys = require("lua/keys")

return {
	colors = colors,
	font_size = 20,
	window_background_opacity = 1,
	font = wezterm.font_with_fallback {
		{ family = 'JetBrains Mono',    weight = 'Medium' },
		{ family = 'Symbols Nerd Font', scale = 0.8, },
		{ family = 'Noto Color Emoji',  scale = 0.8, },
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
	visual_bell = {
		fade_in_function = 'EaseIn',
		fade_in_duration_ms = 50,
		fade_out_function = 'EaseOut',
		fade_out_duration_ms = 50,
	},
	show_new_tab_button_in_tab_bar = false,
	hide_tab_bar_if_only_one_tab = true,
	keys = keys,
	disable_default_key_bindings = true,
	enable_tab_bar = false,
}
