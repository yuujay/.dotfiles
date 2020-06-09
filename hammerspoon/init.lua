hs.loadSpoon("ReloadConfiguration")
spoon.ReloadConfiguration:start()

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "K", function()
  hs.notify.new({title="Hammerspoon", informativeText="Hello World"}):send()
end)

hs.hotkey.bind({"alt", "ctrl"}, "J", function()
  hs.alert.show("asdfasfsfello Worasdfasfasfd!")
end)


hs.hotkey.bind({"alt", "ctrl"}, "H", function()
  hs.alert.show("Will this work?")
end)
