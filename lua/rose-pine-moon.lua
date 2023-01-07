-- rose-pine-moon
-- Copyright (c) 2022 rose-pine

-- repository: https://github.com/neapsix/wezterm
-- license: MIT

local M = {}

local palette = {
    base = "#232136",
    surface = "#2a273f",
    overlay = "#393552",
    muted = "#6e6a86",
    text = "#e0def4",
    love = "#eb6f92",
    gold = "#f6c177",
    rose = "#ea9a97",
    pine = "#3e8fb0",
    foam = "#9ccfd8",
    iris = "#c4a7e7",
    subtle = "#908caa"
}

local active_tab = {
    bg_color = palette.base,
    fg_color = palette.text,
}

local inactive_tab = {
    bg_color = palette.overlay,
    fg_color = palette.muted,
}

function M.colors()
    return {
        foreground = palette.text,
        background = palette.base,
        cursor_bg = palette.subtle,
        cursor_border = palette.subtle,
        cursor_fg = palette.base,
        selection_bg = palette.overlay,
        selection_fg = palette.text,

        ansi = {
            palette.surface,
            palette.love,
            palette.pine,
            palette.gold,
            palette.foam,
            palette.iris,
            palette.rose,
            palette.text,
        },

        brights = {
            palette.overlay,
            palette.love,
            palette.pine,
            palette.gold,
            palette.foam,
            palette.iris,
            palette.rose,
            palette.text,
        },

        tab_bar = {
            background = palette.surface,
            active_tab = active_tab,
            inactive_tab = inactive_tab,
            inactive_tab_hover = active_tab,
            new_tab = inactive_tab,
            new_tab_hover = active_tab,
            inactive_tab_edge = palette.muted, -- (Fancy tab bar only)
        },
    }
end

function M.window_frame() -- (Fancy tab bar only)
    return {
        active_titlebar_bg = palette.base,
        inactive_titlebar_bg = palette.base,
    }
end

return M
