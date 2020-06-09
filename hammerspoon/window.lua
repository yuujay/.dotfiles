-- half of screen
hs.hotkey.bind({'alt', 'cmd'}, 'left', function() hs.window.focusedWindow():moveToUnit({0, 0, 0.5, 1}) end)
hs.hotkey.bind({'alt', 'cmd'}, 'right', function() hs.window.focusedWindow():moveToUnit({0.5, 0, 0.5, 1}) end)
hs.hotkey.bind({'alt', 'cmd'}, 'up', function() hs.window.focusedWindow():moveToUnit({0, 0, 1, 0.5}) end)
hs.hotkey.bind({'alt', 'cmd'}, 'down', function() hs.window.focusedWindow():moveToUnit({0, 0.5, 1, 0.5}) end)

-- Center of screen
hs.hotkey.bind({'alt', 'cmd'}, 'c', function() hs.window.focusedWindow():centerOnScreen() end)


hs.hotkey.bind({"cmd", "alt", "ctrl"}, "H", function()
  hs.alert.show(hs.window.focusedWindow)
end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "J", function()
    hs.alert.show(hs.window)
end)

