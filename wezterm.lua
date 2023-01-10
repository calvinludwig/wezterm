local wezterm = require("wezterm")

local colors = require("lua.kanagawa").colors()
local window_frame = require("lua.kanagawa").window_frame()

return {
    colors = colors,
    window_frame = window_frame,
    font_size = 16.5,
    line_height = 1.3,
    font = wezterm.font_with_fallback({
        "Iosevka Slab",
        "JetbrainsMono Nerd Font",
    }),
    font_antialias = "Subpixel",
    window_padding = {
        left = 8,
        right = 8,
        top = 0,
        bottom = 0,
    },
    tab_bar_at_bottom = false,
    use_fancy_tab_bar = false,
    tab_max_width = 40,
    keys = {
        {
            key = "|",
            mods = "ALT|SHIFT",
            action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
        },
        {
            key = "_",
            mods = "ALT|SHIFT",
            action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
        },
        {
            key = "j",
            mods = "ALT|SHIFT",
            action = wezterm.action.ActivatePaneDirection("Down"),
        },
        {
            key = "k",
            mods = "ALT|SHIFT",
            action = wezterm.action.ActivatePaneDirection("Up"),
        },
        {
            key = "h",
            mods = "ALT|SHIFT",
            action = wezterm.action.ActivatePaneDirection("Left"),
        },
        {
            key = "l",
            mods = "ALT|SHIFT",
            action = wezterm.action.ActivatePaneDirection("Right"),
        },
    },
}
