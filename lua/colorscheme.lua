local M = {}

local colors = require('lua.colors')

local active_tab = {
	bg_color = colors.Neutral.bg,
	fg_color = colors.Neutral[100],
}

local inactive_tab = {
	bg_color = colors.Neutral[800],
	fg_color = colors.Neutral[200],
}

function M.colors()
	return {
		foreground = colors.Neutral[50],
		background = colors.Neutral.bg,
		cursor_bg = colors.Neutral[300],
		cursor_border = colors.Neutral[300],
		cursor_fg = colors.Neutral[900],
		selection_bg = colors.Neutral[800],
		selection_fg = colors.Neutral[200],

		ansi = {
			colors.Neutral[700],
			colors.Red[500],
			colors.Green[500],
			colors.Yellow[500],
			colors.Blue[500],
			colors.Violet[500],
			colors.Cyan[500],
			colors.Neutral[200],
		},

		brights = {
			colors.Neutral[600],
			colors.Red[400],
			colors.Green[400],
			colors.Yellow[400],
			colors.Blue[400],
			colors.Violet[400],
			colors.Cyan[400],
			colors.Neutral[100],
		},

		tab_bar = {
			background = colors.Neutral[900],
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
