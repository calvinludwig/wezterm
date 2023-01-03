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

return {
    keys = keymap,
    color_scheme = "Catppuccin Macchiato",
    font_size = 17.5,
    font = wezterm.font_with_fallback({
        "Iosevka Curly Slab",
        "JetbrainsMono Nerd Font",
    }),
    tab_bar_at_bottom = true,
    use_fancy_tab_bar = false,
}
