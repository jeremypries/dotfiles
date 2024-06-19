local wezterm = require 'wezterm'
local bar = require 'bar'

local config = {}

config.color_scheme = 'cyberpunk'

config.font = wezterm.font 'Hack Nerd Font Mono'
config.font_size = 15

config.enable_scroll_bar = true

bar.apply_to_config(
  config,
  {
    enabled_modules = {
      clock = true,
      hostname = false,
      max_width = 5
    }
  }
)


return config

