--------------------------
-- Default luakit theme --
--------------------------

local theme = {}

-- Default settings
theme.font = "12px Source Code Pro"
theme.fg   = "#f8f8f2"
theme.bg   = "#282a36"

-- Genaral colours
theme.success_fg = theme.fg
theme.loaded_fg  = theme.fg
theme.error_fg = theme.fg
theme.error_bg = "#ff6e67"

-- Warning colours
theme.warning_fg = "#ff6e67"
theme.warning_bg = theme.bg

-- Notification colours
theme.notif_fg = theme.fg
theme.notif_bg = theme.bg

-- Menu colours
theme.menu_fg                   = theme.fg
theme.menu_bg                   = theme.bg
theme.menu_selected_fg          = theme.bg
theme.menu_selected_bg          = theme.fg
theme.menu_title_bg             = theme.bg
theme.menu_primary_title_fg     = "#9aedfe"
theme.menu_secondary_title_fg   = "#ff92d0"

theme.menu_disabled_fg = "#999"
theme.menu_disabled_bg = theme.menu_bg
theme.menu_enabled_fg = theme.menu_fg
theme.menu_enabled_bg = theme.menu_bg
theme.menu_active_fg = theme.menu_fg
theme.menu_active_bg = theme.menu_bg

-- Proxy manager
theme.proxy_active_menu_fg      = theme.fg
theme.proxy_active_menu_bg      = '#FFF'
theme.proxy_inactive_menu_fg    = '#888'
theme.proxy_inactive_menu_bg    = '#FFF'

-- Statusbar specific
theme.sbar_fg         = theme.fg
theme.sbar_bg         = theme.bg

-- Downloadbar specific
theme.dbar_fg         = theme.fg
theme.dbar_bg         = theme.bg
theme.dbar_error_fg   = theme.warning_fg

-- Input bar specific
theme.ibar_fg           = theme.sbar_fg
theme.ibar_bg           = theme.sbar_bg
theme.prompt_ibar_fg    = theme.ibar_fg
theme.input_ibar_fg     = theme.ibar_fg
theme.input_ibar_bg     = theme.ibar_bg

-- Tab label
theme.tab_fg            = theme.fg
theme.tab_bg            = theme.bg
theme.tab_hover_bg      = theme.bg
theme.tab_ntheme        = "#ddd"
theme.selected_fg       = theme.tab_fg
theme.selected_bg       = "#121212"
theme.selected_ntheme   = "#ddd"
theme.loading_fg        = "#33AADD"
theme.loading_bg        = "#121212"

theme.selected_private_tab_bg = "#3d295b"
theme.private_tab_bg    = "#22254a"

-- Trusted/untrusted ssl colours
theme.trust_fg          = "#5af78e"
theme.notrust_fg        = "#ff6e67"

-- General colour pairings
theme.ok = { fg = theme.fg, bg = theme.bg }
theme.warn = { fg = theme.warning_fg, bg = theme.bg }
theme.error = { fg = "#FFF", bg = "#F00" }

return theme

-- vim: et:sw=4:ts=8:sts=4:tw=80
