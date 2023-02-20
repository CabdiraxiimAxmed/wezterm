local wezterm = require'wezterm'

return {
  --hide_tab_bar_if_only_one_tab = true,
  enable_tab_bar = false;
  window_background_image = '/home/abdirahimahmed/Downloads/hannah-troupe-0FQneB1VjaM-unsplash.jpg',
    window_background_image_hsb = {
    -- Darken the background image by reducing it to 1/3rd
    brightness = .5,
  },

  font = wezterm.font_with_fallback({
    "Operator Mono Lig",
    "MesloLGS NF",
  },
  {weight="Bold", stretch='Normal', style=Normal}
  ),
  font_size = 11,

  window_padding = {
    left = 20,
    right = 20,
    top = 20,
    bottom = 20,
  },

  line_height = 1.18,
  harfbuzz_features = { "ss13" },

  -- some custom styled
  allow_square_glyphs_to_overflow_width = "Always",
  font_antialias = "Subpixel",
  --color_scheme = "Catppuccin Frappe",

  window_frame = {
    -- The font used in the tab bar.
    -- Roboto Bold is the default; this font is bundled
    -- with wezterm.
    -- Whatever font is selected here, it will have the
    -- main font setting appended to it to pick up any
    -- fallback fonts you may have used there.
    font = wezterm.font({ family = "Operator Mono Lig" }),

    -- The size of the font in the tab bar.
    -- Default to 10. on Windows but 12.0 on other systems
    font_size = 11.0,

    -- The overall background color of the tab bar when
    -- the window is focused
    active_titlebar_bg = "#333333",

    -- The overall background color of the tab bar when
    -- the window is not focused
    inactive_titlebar_bg = "#333333",

    -- The color of the inactive tab bar edge/divider
    inactive_tab_edge = "#575757",
  },

  native_macos_fullscreen_mode = true,

  initial_cols = 180,
  initial_rows = 160,

  keys = {
    -- This will create a new split and run your default program inside it
    {
      key = "/",
      mods = "CTRL",
      action = wezterm.action.SplitVertical,
    },
    { key = "'", mods = "CTRL", action = wezterm.action({ SplitHorizontal = { domain = "CurrentPaneDomain" } }) },
    { key = "h", mods = "CTRL", action = wezterm.action({ SplitVertical = { domain = "CurrentPaneDomain" } }) },
    { key = "x", mods = "CMD|ALT", action = wezterm.action({ CloseCurrentPane = { confirm = true } }) },

    -- Pane Cycles
    { key = "n", mods = "CTRL", action = wezterm.action.ActivatePaneDirection  "Next"},
    -- Pane Resize
    {
      key = 'n',
      mods = 'SHIFT|CTRL',
      action = wezterm.action.ToggleFullScreen,
    },
  },
}

