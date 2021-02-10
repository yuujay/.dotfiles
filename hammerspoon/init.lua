hs.loadSpoon("ReloadConfiguration")
spoon.ReloadConfiguration:start()

require 'window'
require 'wifi'

----------------- Test Configs -----------------------
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "K", function()
  hs.notify.new({title="Hammerspoon", informativeText="Hello World"}):send()
end)

-- Use `alt-ctrl-j` to show hello world
hs.hotkey.bind({"alt", "ctrl"}, "J", function()
  hs.alert.show("Hello World!")
end)

