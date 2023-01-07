local wezterm = require("wezterm")

local keymap = {
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
        mods = "CTRL|SHIFT",
        action = wezterm.action.ActivatePaneDirection("Down"),
    },
    {
        key = "k",
        mods = "CTRL|SHIFT",
        action = wezterm.action.ActivatePaneDirection("Up"),
    },
    {
        key = "h",
        mods = "CTRL|SHIFT",
        action = wezterm.action.ActivatePaneDirection("Left"),
    },
    {
        key = "l",
        mods = "CTRL|SHIFT",
        action = wezterm.action.ActivatePaneDirection("Right"),
    },
}

local colors = require("lua.rose-pine").colors()
local window_frame = require("lua.rose-pine").window_frame()

return {
    keys = keymap,
    colors = colors,
    window_frame = window_frame,
    font_size = 16,
    line_height = 1.4,
    font = wezterm.font_with_fallback({
        "JetbrainsMono Nerd Font",
    }),
    window_padding = {
        left = 0,
        right = 0,
        top = 0,
        bottom = 0,
    },
    tab_bar_at_bottom = true,
    use_fancy_tab_bar = false,
    tab_max_width = 40,
}
