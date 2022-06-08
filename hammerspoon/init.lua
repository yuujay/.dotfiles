hs.loadSpoon("ReloadConfiguration")
spoon.ReloadConfiguration:start()

hyper = {'shift', 'alt', 'cmd', 'ctrl'}
cmd_shift = {'cmd', 'shift'}
cmd_ctrl = {'cmd', 'ctrl'}
alt_ctrl = {'alt', 'ctrl'}

-- Note Do not move this before key declarations
require 'browser'
require 'layout'
require 'shortcuts'
require 'wifi'
require 'window'
require 'apps'

-- Focus Changes
hs.hotkey.bind(cmd_shift, '0', showHints)
hs.hotkey.bind(cmd_shift, 'h', hs.fnutils.partial(changeFocus, "left"))
hs.hotkey.bind(cmd_shift, 'l', hs.fnutils.partial(changeFocus, "right"))

-- Layout Setup
hs.hotkey.bind(cmd_shift, '1', weekendLayout)
hs.hotkey.bind(cmd_shift, '2', workLayout)

-- Generic Hint
function genericHints()
  hs.alert.show(' `alt-X` - Open Apps \n `cmd-shift-X` - Change Foucs \n `cmd-ctrl-X` - Move to screen \n `alt-cmd-ctrl-X` - Resize apps')
end
hs.hotkey.bind({'cmd'}, '0', genericHints)

----------------- Test Configs -----------------------
hs.hotkey.bind(hyper, "K", function()
  hs.notify.new({title="From Hammerspoon init.lua", informativeText="Hello World Notification"}):send()
end)

-- Use `alt-ctrl-j` to show hello world
hs.hotkey.bind(alt_ctrl, "h", function()
  hs.alert.show("Hello World!")
end)
