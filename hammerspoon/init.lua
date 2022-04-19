hs.loadSpoon("ReloadConfiguration")
spoon.ReloadConfiguration:start()


hyper = {'alt', 'cmd', 'ctrl'}
cmd_shift = {'cmd', 'shift'}
cmd_ctrl = {'cmd', 'ctrl'}
alt_ctrl = {'alt', 'ctrl'}

-- Note Do not move this before key declarations
require 'browser'
require 'layout'
require 'shortcuts'
require 'wifi'
require 'window'

-- App Sizing
hs.hotkey.bind(hyper, 'm', toggleMaximizedWindow)
hs.hotkey.bind(hyper, 'c', centerScreen)
hs.hotkey.bind(hyper, 'f', fullScreen)
hs.hotkey.bind(hyper, 'r', sizeRestore)

-- app movements
hs.hotkey.bind(cmd_ctrl, 'h', moveAppLeft)
hs.hotkey.bind(cmd_ctrl, 'l', moveAppRight)

-- Focus Changes
hs.hotkey.bind(cmd_shift, '0', showHints)
hs.hotkey.bind(cmd_shift, 'h', hs.fnutils.partial(changeFocus, "left"))
hs.hotkey.bind(cmd_shift, 'l', hs.fnutils.partial(changeFocus, "right"))

-- Layout Setup
hs.hotkey.bind(cmd_shift, '1', weekendLayout)
hs.hotkey.bind(cmd_shift, '2', workLayout)

-- Shortcuts to open the app
-- NOTE: Update `helpMenu` in `shortcuts` when anything in this block changes
hs.hotkey.bind({'alt'}, '0', helpMenu)
hs.hotkey.bind({'alt'}, 'B', openAppBinding('Safari'))
hs.hotkey.bind({'alt'}, 'C', openAppBinding('Google Chrome'))
hs.hotkey.bind({'alt'}, 'D', openAppBinding('DBeaver'))
hs.hotkey.bind({'alt'}, 'F', openAppBinding('Finder'))
hs.hotkey.bind({'alt'}, 'I', openAppBinding('IntelliJ IDEA'))
hs.hotkey.bind({'alt'}, 'M', openAppBinding('Microsoft Teams'))
hs.hotkey.bind({'alt'}, 'O', openAppBinding('Microsoft Outlook'))
hs.hotkey.bind({'alt'}, 'S', openAppBinding('Screen Sharing'))
hs.hotkey.bind({'alt'}, 'T', openAppBinding('iTerm'))
hs.hotkey.bind({'alt'}, 'V', openAppBinding('Visual Studio Code'))
hs.hotkey.bind({'alt'}, 'X', openAppBinding('Firefox'))

-- Generic Hint
function genericHints()
  hs.alert.show(' `alt-X` - Open Apps \n `cmd-shift-X` - Change Foucs \n `cmd-ctrl-X` - Move to screen \n `alt-cmd-ctrl-X` - Resize apps')
end
hs.hotkey.bind({'cmd'}, '0', genericHints)

----------------- Test Configs -----------------------
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "K", function()
  hs.notify.new({title="Hammerspoon", informativeText="Hello World"}):send()
end)

-- Use `alt-ctrl-j` to show hello world
hs.hotkey.bind({"alt", "ctrl"}, "h", function()
  hs.alert.show("Hello World!")
end)
