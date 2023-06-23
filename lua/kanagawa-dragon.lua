local M = {}

local active_tab = {
	bg_color = '#181616',
	fg_color = '#c5c9c5',
}

local inactive_tab = {
	bg_color = '#181616',
	fg_color = '#393836',
}

function M.colors()
	return {
		foreground = '#dcd7ba',
		background = '#181616',
		cursor_bg = '#FF9E3B',
		cursor_border = '#FF9E3B',
		cursor_fg = '#1f1f28',
		selection_bg = '#393836',

		ansi = {
			'#0d0c0c',
			'#c4746e',
			'#8a9a7b',
			'#c4b28a',
			'#8ba4b0',
			'#a292a3',
			'#8ea4a2',
			'#9e9b93',
		},
		brights = {
			'#625e5a',
			'#E46876',
			'#87a987',
			'#E6C384',
			'#7FB4CA',
			'#938AA9',
			'#7AA89F',
			'#a6a69c',
		},

		tab_bar = {
			background = '#181616',
			active_tab = active_tab,
			inactive_tab = inactive_tab,
			inactive_tab_hover = active_tab,
			new_tab = inactive_tab,
			new_tab_hover = active_tab,
		},
	}
end

return M
