hs.loadSpoon("ReloadConfiguration")
spoon.ReloadConfiguration:start()

require 'shortcuts'
require 'wifi'
require 'window'

-- App Sizing
hs.hotkey.bind({'alt', 'cmd', 'ctrl'}, 'm', toggleMaximizedWindow)
hs.hotkey.bind({'alt', 'cmd', 'ctrl'}, 'c', centerScreen)
hs.hotkey.bind({'alt', 'cmd', 'ctrl'}, 'f', fullScreen)
hs.hotkey.bind({'alt', 'cmd', 'ctrl'}, 'r', sizeRestore)

-- app movements
hs.hotkey.bind({'cmd', 'ctrl', 'shift'}, 'H', hs.fnutils.partial(moveToScreen, "left"))
hs.hotkey.bind({'cmd', 'ctrl', 'shift'}, 'L', hs.fnutils.partial(moveToScreen, "right"))
hs.hotkey.bind({'cmd', 'ctrl'}, 'h', moveLeft)
hs.hotkey.bind({'cmd', 'ctrl'}, 'l', moveRight)

-- Focus Changes
hs.hotkey.bind({'cmd', 'shift'}, '0', showHints)
hs.hotkey.bind({'cmd', 'shift'}, 'h', hs.fnutils.partial(changeFocus, "left"))
hs.hotkey.bind({'cmd', 'shift'}, 'l', hs.fnutils.partial(changeFocus, "right"))

-- Shortcuts to open the app
-- NOTE: Update `helpMenu` in `shortcuts` when anything in this block changes
hs.hotkey.bind({'alt'}, '0', helpMenu)
hs.hotkey.bind({'alt'}, 'C', openApp('Google Chrome'))
hs.hotkey.bind({'alt'}, 'D', openApp('DBeaver'))
hs.hotkey.bind({'alt'}, 'F', openApp('Finder'))
hs.hotkey.bind({'alt'}, 'I', openApp('IntelliJ IDEA'))
hs.hotkey.bind({'alt'}, 'M', openApp('Microsoft Teams'))
hs.hotkey.bind({'alt'}, 'T', openApp('iTerm'))
hs.hotkey.bind({'alt'}, 'V', openApp('Visual Studio Code'))

-- Generic Hint
function genericHints()
  hs.alert.show(' `alt-X` - Open Apps \n `cmd-shift-X` - Change Foucs \n `cmd-ctrl-X` - Move to desktop \n `cmd-ctrl-shift-X` - Move to screens \n `alt-cmd-ctrl-X` - Resize apps')
end
hs.hotkey.bind({'cmd'}, '0', genericHints)

----------------- Test Configs -----------------------
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "K", function()
  hs.notify.new({title="Hammerspoon", informativeText="Hello World"}):send()
end)

-- Use `alt-ctrl-j` to show hello world
hs.hotkey.bind({"alt", "ctrl"}, "J", function()
  hs.alert.show("Hello World!")
end)

