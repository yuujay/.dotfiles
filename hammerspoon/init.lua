hs.loadSpoon("ReloadConfiguration")
spoon.ReloadConfiguration:start()

HYPER = {'shift', 'alt', 'cmd', 'ctrl'}
CMD_SHIFT = {'cmd', 'shift'}
CMD_CTRL = {'cmd', 'ctrl'}
ALT_CTRL = {'alt', 'ctrl'}

-- Note Do not move this before key declarations
require 'browser'
require 'layout'
require 'shortcuts'
require 'wifi'
require 'window'
require 'apps'
require 'work-setup'

-- Focus Changes
hs.hotkey.bind(CMD_SHIFT, '0', showHints)
hs.hotkey.bind(CMD_SHIFT, 'h', hs.fnutils.partial(changeFocus, "left"))
hs.hotkey.bind(CMD_SHIFT, 'l', hs.fnutils.partial(changeFocus, "right"))

-- Layout Setup
hs.hotkey.bind(CMD_SHIFT, '1', WeekendLayout)
hs.hotkey.bind(CMD_SHIFT, '2', WorkLayout)

-- Generic Hint
local function genericHints()
  hs.alert.show(' `alt-X` - Open Apps \n `cmd-shift-X` - Change Foucs \n `cmd-ctrl-X` - Move to screen \n `alt-cmd-ctrl-X` - Resize apps')
end
hs.hotkey.bind({'cmd'}, '0', genericHints)

----------------- Test Configs -----------------------
hs.hotkey.bind(HYPER, "K", function()
  hs.notify.new({title="From Hammerspoon init.lua", informativeText="Hello World Notification"}):send()
end)

-- Use `alt-ctrl-j` to show hello world
hs.hotkey.bind(ALT_CTRL, "h", function()
  hs.alert.show("Hello World!")
end)
