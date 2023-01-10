-- rose-pine
-- Copyright (c) 2022 rose-pine

-- repository: https://github.com/neapsix/wezterm
-- license: MIT

local M = {}

local palette_colors = {

    -- Bg Shades
    sumiInk0 = "#16161D",
    sumiInk1b = "#181820",
    sumiInk1c = "#1a1a22",
    sumiInk1 = "#1F1F28",
    sumiInk2 = "#2A2A37",
    sumiInk3 = "#363646",
    sumiInk4 = "#54546D",

    -- Popup and Floats
    waveBlue1 = "#223249",
    waveBlue2 = "#2D4F67",

    -- Diff and Git
    winterGreen = "#2B3328",
    winterYellow = "#49443C",
    winterRed = "#43242B",
    winterBlue = "#252535",
    autumnGreen = "#76946A",
    autumnRed = "#C34043",
    autumnYellow = "#DCA561",

    -- Diag
    samuraiRed = "#E82424",
    roninYellow = "#FF9E3B",
    waveAqua1 = "#6A9589",
    dragonBlue = "#658594",

    -- Fg and Comments
    oldWhite = "#C8C093",
    fujiWhite = "#DCD7BA",
    fujiGray = "#727169",
    springViolet1 = "#938AA9",

    oniViolet = "#957FB8",
    crystalBlue = "#7E9CD8",
    springViolet2 = "#9CABCA",
    springBlue = "#7FB4CA",
    lightBlue = "#A3D4D5", -- unused yet
    waveAqua2 = "#7AA89F", -- improve lightness: desaturated greenish Aqua
    waveAqua4  = "#7AA880",
    waveAqua5  = "#6CAF95",
    waveAqua3  = "#68AD99",

    springGreen = "#98BB6C",
    boatYellow1 = "#938056",
    boatYellow2 = "#C0A36E",
    carpYellow = "#E6C384",

    sakuraPink = "#D27E99",
    waveRed = "#E46876",
    peachRed = "#FF5D62",
    surimiOrange = "#FFA066",
    katanaGray = "#717C7C",
}

local active_tab = {
    bg_color = palette_colors.sumiInk1,
    fg_color = palette_colors.fujiWhite,
}

local inactive_tab = {
    bg_color = palette_colors.sumiInk2,
    fg_color = palette_colors.oldWhite,
}

function M.colors()
    return {
        foreground = palette_colors.fujiWhite,
        background = palette_colors.sumiInk1,
        cursor_bg = palette_colors.oldWhite,
        cursor_border = palette_colors.oldWhite,
        cursor_fg = palette_colors.sumiInk0,
        selection_bg = palette_colors.sumiInk0,
        selection_fg = palette_colors.fujiWhite,

        ansi = {
            palette_colors.sumiInk2,
            palette_colors.autumnRed,
            palette_colors.autumnGreen,
            palette_colors.boatYellow2,
            palette_colors.crystalBlue,
            palette_colors.oniViolet,
            palette_colors.waveAqua1,
            palette_colors.oldWhite,
        },

        brights = {
            palette_colors.fujiGray,
            palette_colors.peachRed,
            palette_colors.springGreen,
            palette_colors.carpYellow,
            palette_colors.springBlue,
            palette_colors.springViolet1,
            palette_colors.waveAqua2,
            palette_colors.fujiWhite,
        },

        tab_bar = {
            background = palette_colors.sumiInk0,
            active_tab = active_tab,
            inactive_tab = inactive_tab,
            inactive_tab_hover = active_tab,
            new_tab = inactive_tab,
            new_tab_hover = active_tab,
            inactive_tab_edge = palette_colors.oldWhite,
        },
    }
end

function M.window_frame() -- (Fancy tab bar only)
    return {
        active_titlebar_bg = palette_colors.sumiInk2,
        inactive_titlebar_bg = palette_colors.sumiInk1,
    }
end

return M
