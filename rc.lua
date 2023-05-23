-- to-do --
-- fix keybinds
    -- Fix brightness
    -- Fix Audio
-- make gooey
    -- Make custom wibox/bar that can be adjusted
    -- Make custom naughty/notis - Including:
      -- Audio Adjustment
      -- Custom Notifications
      -- Mayb different notifications according to app id???
    -- Custom pngs using editing software & Figure out the icons     
      -- Maybe a Wave design
    -- Make theme selection 
    -- Make wallpaper selector that greps images from "Pictures" directory

-- make theme table/colorscheme 

-- backburner:
    -- Implement custom plugins, such as rubato, etc.
    -- 

-- have fun!!!

-- Error Handler --
require("naughty").connect_signal("require::display_error",
  function(message, startup)
    require("naughty").notification {
      urgency="critical",
      title="Error"..(startup and " during startup!" or "!"),
      message=message
    }
  end)

-- If lua rocks is loaded, it will try to load via this

pcall(require, "luarocks loader")

require'conf'
require'colorscheme'
require'widgets'
require'theme'
require'signal'
require'usr'

require("awful").spawn.with_shell('~/.config/awesome/start')
