-- rose-pine
-- Copyright (c) 2022 rose-pine
-- repository: https://github.com/neapsix/wezterm
-- license: MIT
local M = {}

local palette = {
    base = '#191724',
    overlay = '#26233a',
    muted = '#6e6a86',
    text = '#e0def4',
    love = '#eb6f92',
    gold = '#f6c177',
    rose = '#ebbcba',
    pine = '#31748f',
    foam = '#9ccfd8',
    iris = '#c4a7e7',
    highlight_high = '#524f67'
}

local active_tab = {
    bg_color = '#282828',
    fg_color = '#ddc7a1'
}

local inactive_tab = {
    bg_color = '#32302f',
    fg_color = '#5a524c'
}

function M.colors()
    return {
        tab_bar = {
            background = '#1b1b1b',
            active_tab = active_tab,
            inactive_tab = inactive_tab,
            inactive_tab_hover = active_tab,
            new_tab = inactive_tab,
            new_tab_hover = active_tab
        }
    }
end

return M
