local wezterm = require("wezterm")
local act = wezterm.action

local keys = {
	{ mods = 'ALT|SHIFT', key = '|',          action = act.SplitHorizontal { domain = 'CurrentPaneDomain', }, },
	{ mods = 'ALT|SHIFT', key = '_',          action = act.SplitVertical { domain = 'CurrentPaneDomain', }, },
	{ mods = 'ALT|SHIFT', key = 'j',          action = act.ActivatePaneDirection 'Down', },
	{ mods = 'ALT|SHIFT', key = 'k',          action = act.ActivatePaneDirection 'Up', },
	{ mods = 'ALT|SHIFT', key = 'h',          action = act.ActivatePaneDirection 'Left', },
	{ mods = 'ALT|SHIFT', key = 'l',          action = act.ActivatePaneDirection 'Right', },
	{ mods = 'ALT|SHIFT', key = 'DownArrow',  action = act.AdjustPaneSize { 'Down', 5 }, },
	{ mods = 'ALT|SHIFT', key = 'UpArrow',    action = act.AdjustPaneSize { 'Up', 5 }, },
	{ mods = 'ALT|SHIFT', key = 'LeftArrow',  action = act.AdjustPaneSize { 'Left', 5 }, },
	{ mods = 'ALT|SHIFT', key = 'RightArrow', action = act.AdjustPaneSize { 'Right', 5 }, },
	{ mods = 'ALT|SHIFT', key = 'p',          action = act.ActivateCommandPalette, },
	{ mods = '',          key = 'F11',        action = act.ToggleFullScreen, },
}

for i = 1, 8 do
	table.insert(keys, { key = 'F' .. tostring(i), action = act.ActivateTab(i - 1), })
end

return keys
