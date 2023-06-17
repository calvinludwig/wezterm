local M = {}

local active_tab = {
	bg_color = '#1F1F28',
	fg_color = '#DCD7BA',
}

local inactive_tab = {
	bg_color = '#1a1a22',
	fg_color = '#363646',
}

function M.colors()
	return {
		foreground = '#DCD7BA',
		background = '#1F1F28',
		cursor_bg = '#FF9E3B',
		cursor_border = '#FF9E3B',
		cursor_fg = '#1F1F28',
		selection_bg = '#223249',

		ansi = {
			'#16161D',
			'#C34043',
			'#76946A',
			'#C0A36E',
			'#7E9CD8',
			'#957FB8',
			'#6A9589',
			'#C8C093',
		},
		brights = {
			'#727169',
			'#E82424',
			'#98BB6C',
			'#E6C384',
			'#7FB4CA',
			'#938AA9',
			'#7AA89F',
			'#DCD7BA',
		},

		tab_bar = {
			background = '#1a1a22',
			active_tab = active_tab,
			inactive_tab = inactive_tab,
			inactive_tab_hover = active_tab,
			new_tab = inactive_tab,
			new_tab_hover = active_tab,
		},
	}
end

return M
