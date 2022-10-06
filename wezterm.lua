local wezterm = require("wezterm")

local catppuccin = require("colors/catppuccin").setup({
    sync_flavours = {
        light = "latte",
        dark = "mocha",
    },
})
-- fonts I like, with the settings I prefer
-- kept seperately from the rest of the config so that I can easily change them
local fonts = {
    cascadia = wezterm.font({
        family = "Cascadia Code",
        harfbuzz_features = {
            "ss01=1",
            "ss19=1",
        },
    }),
    monolisa = wezterm.font({
        family = "Mono Dukk",
        harfbuzz_features = {
            "ss02=1",
            "onum=1",
        },
    }),
    dankmono = wezterm.font({
        family = "Dank Mono",
        weight = "DemiBold" -- The font is so thin...
    }),
    victor = wezterm.font({
        family = "Victor Mono",
        weight = "DemiBold"
    })
}

return {
    ---- rice
    -- font
    font = fonts.victor,
    font_size = 16.0, -- For dank mono and cascadia code - 18; for monolisa and victor - 16
    line_height = 1.4,
    use_fancy_tab_bar = false,
    tab_bar_at_bottom = true,
    hide_tab_bar_if_only_one_tab = true,
    tab_max_width = 32,
    -- window
    window_decorations = "RESIZE",
    window_padding = {
        left = 4,
        right = 4,
        top = 4,
        bottom = 4,
    },
    -- theme
    colors = catppuccin,
    -- nightly only
    clean_exit_codes = { 130 },
    keys = {
        {
          key = 'J',
          mods = 'CTRL|SHIFT|ALT',
          action = wezterm.action.ActivatePaneDirection 'Down',
        },
        {
          key = 'K',
          mods = 'CTRL|SHIFT|ALT',
          action = wezterm.action.ActivatePaneDirection 'Up',
        },
        {
          key = 'H',
          mods = 'CTRL|SHIFT|ALT',
          action = wezterm.action.ActivatePaneDirection 'Left',
        },
        {
          key = 'L',
          mods = 'CTRL|SHIFT|ALT',
          action = wezterm.action.ActivatePaneDirection 'Right',
        },
    }
}
