local M = {}

local active_tab = {
	bg_color = '#F1F1F1',
	fg_color = '#54433A',
}

local inactive_tab = {
	bg_color = '#E9E1DB',
	fg_color = '#7D6658',
}

function M.colors()
	return {
		foreground = '#54433A',
		background = '#F1F1F1',
		cursor_bg = '#54433A',
		cursor_border = '#54433A',
		cursor_fg = '#F1F1F1',
		selection_bg = '#D9D3CE',

		ansi = {
			'#E9E1DB',
			'#C77B8B',
			'#6E9B72',
			'#BC5C00',
			'#7892BD',
			'#BE79BB',
			'#739797',
			'#7D6658',
		},
		brights = {
			'#A98A78',
			'#BF0021',
			'#3A684A',
			'#A06D00',
			'#465AA4',
			'#904180',
			'#3D6568',
			'#54433A',
		},

		tab_bar = {
			background = '#E9E1DB',
			active_tab = active_tab,
			inactive_tab = inactive_tab,
			inactive_tab_hover = active_tab,
			new_tab = inactive_tab,
			new_tab_hover = active_tab,
		},
	}
end

return M
