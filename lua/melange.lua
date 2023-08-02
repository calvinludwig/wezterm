local M = {}

local active_tab = {
	bg_color = '#292522',
	fg_color = '#ECE1D7',
}

local inactive_tab = {
	bg_color = '#34302C',
	fg_color = '#867462',
}

function M.colors()
	return {
		foreground = '#ECE1D7',
		background = '#292522',
		cursor_bg = '#ECE1D7',
		cursor_border = '#ECE1D7',
		cursor_fg = '#292522',
		selection_bg = '#403A36',
		selection_fg = '#ECE1D7',

		ansi = {
			"#34302C",
			"#BD8183",
			"#78997A",
			"#E49B5D",
			"#7F91B2",
			"#B380B0",
			"#7B9695",
			"#C1A78E"
		},
		brights = {
			"#867462",
			"#D47766",
			"#85B695",
			"#EBC06D",
			"#A3A9CE",
			"#CF9BC2",
			"#89B3B6",
			"#ECE1D7",
		},

		tab_bar = {
			background = '#34302C',
			active_tab = active_tab,
			inactive_tab = inactive_tab,
			inactive_tab_hover = active_tab,
			new_tab = inactive_tab,
			new_tab_hover = active_tab,
		},
	}
end

return M
