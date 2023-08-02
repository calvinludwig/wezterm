local wezterm = require 'wezterm'
local colors = require('lua/melange-light').colors()
local keys = require("lua/keys")

return {
	colors = colors,
	font_size = 18,
	window_background_opacity = 1,
	font = wezterm.font_with_fallback {
		{ family = 'Iosevka Term',      stretch = "Expanded", weight = 'Regular' },
		-- 'Dank Mono',
		{ family = 'Noto Color Emoji',  scale = 0.8, },
		{ family = 'Symbols Nerd Font', scale = 0.8, },
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
		fade_in_duration_ms = 75,
		fade_out_duration_ms = 75,
		target = "CursorColor",
	},
	show_new_tab_button_in_tab_bar = false,
	hide_tab_bar_if_only_one_tab = true,
	keys = keys,
}
