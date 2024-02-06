-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = "Catppuccin Mocha"
config.window_frame = {
  inactive_titlebar_bg = '#11111b',
  active_titlebar_bg = '#11111b',
}
config.colors = {
  tab_bar = {
    background = '#11111b',
    active_tab = {
      bg_color = '#1e1e2e',
      fg_color = '#c0c0c0',
      intensity = 'Normal',
      underline = 'None',
      italic = false,
      strikethrough = false,
    },
    inactive_tab = {
      bg_color = '#11111b',
      fg_color = '#808080',
    },
    inactive_tab_hover = {
      bg_color = '#45475a',
      fg_color = '#909090',
      italic = true,
    },

    new_tab = {
      bg_color = '#1e1e2e',
      fg_color = '#808080',
    },
    new_tab_hover = {
      bg_color = '#45475a',
      fg_color = '#909090',
      italic = true,
    },
  },
}
config.font = wezterm.font 'JetBrains Mono'
config.hide_tab_bar_if_only_one_tab = true
config.font_size = 23

-- and finally, return the configuration to wezterm
return config
