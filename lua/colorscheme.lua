local M = {}

local colors = require('lua.colors')

local active_tab = {
	bg_color = colors.Neutral[900],
	fg_color = colors.Neutral[100],
}

local inactive_tab = {
	bg_color = colors.Neutral[800],
	fg_color = colors.Neutral[200],
}

function M.colors()
	return {
		foreground = colors.Neutral[50],
		background = colors.Neutral[900],
		cursor_bg = colors.Neutral[300],
		cursor_border = colors.Neutral[300],
		cursor_fg = colors.Neutral[900],
		selection_bg = colors.Neutral[800],
		selection_fg = colors.Neutral[200],

		ansi = {
			colors.Neutral[700],
			colors.Red[400],
			colors.Green[400],
			colors.Orange[300],
			colors.Indigo[400],
			colors.Purple[400],
			colors.Teal[400],
			colors.Neutral[200],
		},

		brights = {
			colors.Neutral[600],
			colors.Rose[400],
			colors.Emerald[400],
			colors.Amber[300],
			colors.Blue[400],
			colors.Fuchsia[400],
			colors.Cyan[400],
			colors.Neutral[100],
		},

		tab_bar = {
			background = colors.Neutral[950],
			active_tab = active_tab,
			inactive_tab = inactive_tab,
			inactive_tab_hover = active_tab,
			new_tab = inactive_tab,
			new_tab_hover = active_tab,
			inactive_tab_edge = colors.Neutral[500],
		},
	}
end

return M
