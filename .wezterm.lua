local wezterm = require 'wezterm'

local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

config.color_scheme = 'lain'

config.font = wezterm.font 'PlemolJP Console NF'
config.font_size = 30

config.window_background_gradient = {
  colors = { '#2F3857', '#0f0c29' },
  orientation = {
    Radial = {
      cx = 0.5,
      cy = 0.5,
      radius = 0.8,
    }
  },
}


config.window_padding = {
  left = 50,
  right = 50,
  top = 50,
  bottom = 50,
}

return config
