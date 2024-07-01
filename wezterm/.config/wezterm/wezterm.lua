local wezterm = require("wezterm")
local c = wezterm.config_builder()

-- build your config according to
-- https://wezfurlong.org/wezterm/config/lua/wezterm/config_builder.html

-- the plugin is currently made for Catppuccin only
c.color_scheme = "Catppuccin Mocha"
--c.color_scheme = 'cyberpunk'

c.font = wezterm.font 'Hack Nerd Font Mono'
c.font_size = 15
c.enable_scroll_bar = true
c.window_decorations = "RESIZE"

-- then finally apply the plugin
-- these are currently the defaults:
wezterm.plugin.require("https://github.com/nekowinston/wezterm-bar").apply_to_config(c, {
  position = "bottom",
  max_width = 32,
  dividers = "slant_right", -- or "slant_left", "arrows", "rounded", false
  indicator = {
    leader = {
      enabled = true,
      off = " ",
      on = " ",
    },
    mode = {
      enabled = true,
      names = {
        resize_mode = "RESIZE",
        copy_mode = "VISUAL",
        search_mode = "SEARCH",
      },
    },
  },
  tabs = {
    numerals = "arabic", -- or "roman"
    pane_count = "superscript", -- or "subscript", false
    brackets = {
      active = { "", ":" },
      inactive = { "", ":" },
    },
  },
  clock = { -- note that this overrides the whole set_right_status
    enabled = true,
    format = "%H:%M", -- use https://wezfurlong.org/wezterm/config/lua/wezterm.time/Time/format.html
  },
})

return c
