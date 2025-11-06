local wezterm = require("wezterm")
local config = {}

if wezterm.config_builder then config = wezterm.config_builder() end


config.automatically_reload_config = true

-- Font
config.font_size = 14
config.line_height = 1.2
config.font = wezterm.font("Maple Mono NF")

-- Colors
config.colors = {
  cursor_bg = "white",
  cursor_border = "white"
}

-- Windows and appearance
config.window_decorations = "RESIZE"
config.window_background_opacity = 0.9
config.window_close_confirmation = "NeverPrompt"
config.default_cursor_style = "BlinkingBar"
config.hide_tab_bar_if_only_one_tab = true


-- Key Bindings
config.keys = {
  { 
    key = "q", 
    mods ="CTRL", 
    action = wezterm.action.CloseCurrentPane {confirm = true},
  },
}

-- Mouse Bindings
config.mouse_bindings = {
  {
    event = { Drag = { streak = 1, button = 'Left' } },
    mods = "CTRL",
    action = wezterm.action.StartWindowDrag,
  },
}

return config