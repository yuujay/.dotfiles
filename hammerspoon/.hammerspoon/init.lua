hs.loadSpoon("ReloadConfiguration")
spoon.ReloadConfiguration:start()

HYPER = {'shift', 'alt', 'cmd', 'ctrl'}
CMD_SHIFT = {'cmd', 'shift'}
CMD_CTRL = {'cmd', 'ctrl'}
ALT_CMD = {'alt', 'cmd'}

-- Note Do not move this before key declarations
require 'browser'
require 'wifi'
require 'apps'
require 'work-setup'

----------------- Test Configs -----------------------
hs.hotkey.bind(HYPER, "h", function()
  hs.notify.new({title="From Hammerspoon init.lua", informativeText="Hello World Notification"}):send()
end)

-- Use `alt-ctrl-j` to show hello world
hs.hotkey.bind(ALT_CMD, "h", function()
  hs.alert.show("Hello World!")
end)
