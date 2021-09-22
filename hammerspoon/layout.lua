require 'shortcuts'
require 'window'

PRIMARY_SCREEN = hs.screen.primaryScreen()

CHROME = 'Google Chrome'
DBEAVER = 'DBeaver'
ITERM = 'iTerm'
OUTLOOK = 'Microsoft Outlook'
TEAMS = 'Microsoft Teams'

HOME_APPS = { CHROME, ITERM }
WORK_APPS = { CHROME, DBEAVER, ITERM, OUTLOOK, TEAMS }

LAYOUT = {}

local windowLayout = {
  {"Google Chrome", nil, PRIMARY_SCREEN, hs.layout.maximized, nil, nil},
  {"Microsoft Outlook", nil, PRIMARY_SCREEN, hs.layout.maximized, nil, nil},
  {"Microsoft Teams", nil, PRIMARY_SCREEN, hs.layout.maximized, nil, nil},
}

function weekendLayout()
  killApps(WORK_APPS)
  openApps(HOME_APPS)
end

function workLayout()
  openApps(WORK_APPS)
  -- hs.layout.apply(windowLayout)
  -- maximizeApps(hs.window.filter.new():getWindows())
end

-- TODO: Fix this to maximize all open windows
-- function maximizeApps()
--   windows = hs.window.filter.new():getWindows()
--   for key,window in ipairs(windows)
--   do
--       hs.alert.show(window)
--       hs.logger.new('1'):d(window)
--     maximizeToggle(window)
--   end
-- end

-- function maximizeToggle(window)
--     window:focus()
--   hs.timer.doAfter(0.5, function()
--     window:setFullScreen(not window:isFullScreen())
--   end)
-- end
