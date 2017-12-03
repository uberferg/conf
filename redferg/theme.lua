-------------------------------
--  "Redferg" awesome theme  --
--    By Ferg                --
-------------------------------

-- Alternative icon sets and widget icons:
--  * http://awesome.naquadah.org/wiki/Nice_Icons

-- {{{ Main
theme = {}
theme.wallpaper = "/usr/share/awesome/themes/redferg/city_red_umbrella_painting.jpg"
-- }}}

-- {{{ Styles
theme.font      = "Ubuntu Mono Bold 18"

-- {{{ Colors
theme.fg_normal  = "#FFDDDD"
theme.fg_focus   = "#DDCCCC"
theme.fg_urgent  = "#CC9393"
theme.bg_normal  = "#646060"
theme.bg_focus   = "#110000"
theme.bg_urgent  = "#CC0000"
theme.bg_systray = theme.bg_normal
-- }}}

-- {{{ Borders
theme.border_width  = 10
theme.border_normal = "#646060"
theme.border_focus  = "#110000"
theme.border_marked = "#CC9393"
-- }}}

-- {{{ Titlebars
theme.titlebar_bg_focus  = "#3F3F3F"
theme.titlebar_bg_normal = "#3F3F3F"
-- }}}

-- There are other variable sets
-- overriding the default one when
-- defined, the sets are:
-- [taglist|tasklist]_[bg|fg]_[focus|urgent]
-- titlebar_[normal|focus]
-- tooltip_[font|opacity|fg_color|bg_color|border_width|border_color]
-- Example:
--theme.taglist_bg_focus = "#CC9393"
-- }}}

-- {{{ Widgets
-- You can add as many variables as
-- you wish and access them by using
-- beautiful.variable in your rc.lua
--theme.fg_widget        = "#AECF96"
--theme.fg_center_widget = "#88A175"
--theme.fg_end_widget    = "#FF5656"
--theme.bg_widget        = "#494B4F"
--theme.border_widget    = "#3F3F3F"
-- }}}

-- {{{ Mouse finder
theme.mouse_finder_color = "#CC9393"
-- mouse_finder_[timeout|animate_timeout|radius|factor]
-- }}}

-- {{{ Menu
-- Variables set for theming the menu:
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]
theme.menu_height = 15
theme.menu_width  = 100
-- }}}

-- {{{ Icons
-- {{{ Taglist
theme.taglist_squares_sel   = "/usr/share/awesome/themes/redferg/taglist/squarefz.png"
theme.taglist_squares_unsel = "/usr/share/awesome/themes/redferg/taglist/squarez.png"
--theme.taglist_squares_resize = "false"
-- }}}

-- {{{ Misc
theme.awesome_icon           = "/usr/share/awesome/themes/redferg/awesome-icon.png"
theme.menu_submenu_icon      = "/usr/share/awesome/themes/default/submenu.png"
-- }}}

-- {{{ Layout
theme.layout_tile       = "/usr/share/awesome/themes/redferg/layouts/tile.png"
theme.layout_tileleft   = "/usr/share/awesome/themes/redferg/layouts/tileleft.png"
theme.layout_tilebottom = "/usr/share/awesome/themes/redferg/layouts/tilebottom.png"
theme.layout_tiletop    = "/usr/share/awesome/themes/redferg/layouts/tiletop.png"
theme.layout_fairv      = "/usr/share/awesome/themes/redferg/layouts/fairv.png"
theme.layout_fairh      = "/usr/share/awesome/themes/redferg/layouts/fairh.png"
theme.layout_spiral     = "/usr/share/awesome/themes/redferg/layouts/spiral.png"
theme.layout_dwindle    = "/usr/share/awesome/themes/redferg/layouts/dwindle.png"
theme.layout_max        = "/usr/share/awesome/themes/redferg/layouts/max.png"
theme.layout_fullscreen = "/usr/share/awesome/themes/redferg/layouts/fullscreen.png"
theme.layout_magnifier  = "/usr/share/awesome/themes/redferg/layouts/magnifier.png"
theme.layout_floating   = "/usr/share/awesome/themes/redferg/layouts/floating.png"
-- }}}

-- {{{ Titlebar
theme.titlebar_close_button_focus  = "/usr/share/awesome/themes/redferg/titlebar/close_focus.png"
theme.titlebar_close_button_normal = "/usr/share/awesome/themes/redferg/titlebar/close_normal.png"

theme.titlebar_ontop_button_focus_active  = "/usr/share/awesome/themes/redferg/titlebar/ontop_focus_active.png"
theme.titlebar_ontop_button_normal_active = "/usr/share/awesome/themes/redferg/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_inactive  = "/usr/share/awesome/themes/redferg/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_inactive = "/usr/share/awesome/themes/redferg/titlebar/ontop_normal_inactive.png"

theme.titlebar_sticky_button_focus_active  = "/usr/share/awesome/themes/redferg/titlebar/sticky_focus_active.png"
theme.titlebar_sticky_button_normal_active = "/usr/share/awesome/themes/redferg/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_inactive  = "/usr/share/awesome/themes/redferg/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_inactive = "/usr/share/awesome/themes/redferg/titlebar/sticky_normal_inactive.png"

theme.titlebar_floating_button_focus_active  = "/usr/share/awesome/themes/redferg/titlebar/floating_focus_active.png"
theme.titlebar_floating_button_normal_active = "/usr/share/awesome/themes/redferg/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_inactive  = "/usr/share/awesome/themes/redferg/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_inactive = "/usr/share/awesome/themes/redferg/titlebar/floating_normal_inactive.png"

theme.titlebar_maximized_button_focus_active  = "/usr/share/awesome/themes/redferg/titlebar/maximized_focus_active.png"
theme.titlebar_maximized_button_normal_active = "/usr/share/awesome/themes/redferg/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_inactive  = "/usr/share/awesome/themes/redferg/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_inactive = "/usr/share/awesome/themes/redferg/titlebar/maximized_normal_inactive.png"
-- }}}
-- }}}

return theme
