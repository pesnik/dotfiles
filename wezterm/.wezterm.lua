local wezterm = require 'wezterm'
local config = wezterm.config_builder()

-- ─── Appearance ──────────────────────────────────────────────────────────────
config.color_scheme = 'AdventureTime'
config.font = wezterm.font('JetBrains Mono', { weight = 'Regular' })
config.font_size = 13
config.line_height = 1.2

-- ─── Window ──────────────────────────────────────────────────────────────────
config.initial_cols = 220
config.initial_rows = 50
config.window_decorations = 'RESIZE'          -- no titlebar, keep resize
config.window_background_opacity = 0.92
config.macos_window_background_blur = 20
config.native_macos_fullscreen_mode = true

config.window_padding = {
  left   = '1cell',
  right  = '1cell',
  top    = '0.5cell',
  bottom = '0.5cell',
}

-- ─── Tab bar ─────────────────────────────────────────────────────────────────
config.enable_tab_bar = false

-- ─── Cursor ──────────────────────────────────────────────────────────────────
config.default_cursor_style = 'BlinkingBar'
config.cursor_blink_rate = 600
config.cursor_blink_ease_in = 'Constant'
config.cursor_blink_ease_out = 'Constant'

-- ─── Scrollback ──────────────────────────────────────────────────────────────
config.scrollback_lines = 10000
config.enable_scroll_bar = false

-- ─── Performance ─────────────────────────────────────────────────────────────
config.max_fps = 120
config.animation_fps = 60
config.front_end = 'WebGpu'               -- best GPU backend on macOS
config.webgpu_power_preference = 'HighPerformance'

-- ─── Keys ────────────────────────────────────────────────────────────────────
config.keys = {
  -- Split panes
  { key = 'd', mods = 'CMD',       action = wezterm.action.SplitHorizontal  { domain = 'CurrentPaneDomain' } },
  { key = 'd', mods = 'CMD|SHIFT', action = wezterm.action.SplitVertical    { domain = 'CurrentPaneDomain' } },
  -- Navigate panes
  { key = 'h', mods = 'CMD|OPT',   action = wezterm.action.ActivatePaneDirection 'Left'  },
  { key = 'l', mods = 'CMD|OPT',   action = wezterm.action.ActivatePaneDirection 'Right' },
  { key = 'k', mods = 'CMD|OPT',   action = wezterm.action.ActivatePaneDirection 'Up'    },
  { key = 'j', mods = 'CMD|OPT',   action = wezterm.action.ActivatePaneDirection 'Down'  },
  -- Zoom pane
  { key = 'z', mods = 'CMD',       action = wezterm.action.TogglePaneZoomState },
  -- Clear scrollback
  { key = 'k', mods = 'CMD',       action = wezterm.action.ClearScrollback 'ScrollbackAndViewport' },
}

-- ─── Mouse ───────────────────────────────────────────────────────────────────
config.hide_mouse_cursor_when_typing = true

return config
