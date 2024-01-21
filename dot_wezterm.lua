local wezterm = require 'wezterm'

wezterm.on('format-window-title', function(tab, pane, tabs, panes, config)
  local zoomed = ''
  if tab.active_pane.is_zoomed then
    zoomed = '[Z] '
  end

  local index = ''
  if #tabs > 1 then
    index = string.format('[%d/%d] ', tab.tab_index + 1, #tabs)
  end

  return zoomed .. index .. tab.active_pane.title
end)

return {
  font = wezterm.font("Source Code Pro", { weight = "Regular" }),
  font_size = 17.0,
  color_scheme = "Solarized Dark Higher Contrast",
  inactive_pane_hsb = {
    saturation = 0.8,
    brightness = 0.4,
  },
  window_background_opacity = 1.0,
  initial_rows = 33,
  initial_cols = 100,
}
