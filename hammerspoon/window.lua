DELL_SCREEN = hs.screen.allScreens()[1]
MAC_BOOK_SCREEN = hs.screen.allScreens()[2]

function full_screen() 
  local win = hs.window.focusedWindow()
  win:maximize()
end

function center_screen()
  local win = hs.window.focusedWindow()
  win:centerOnScreen() 
end

function size_restore()
  hs.alert.show("FIX: App size restore function in .hammersoon/window.lua!")
end

function move_left()
  local win = hs.window.focusedWindow()
  win:moveOneScreenWest()
end

function move_right()
  local win = hs.window.focusedWindow()
  win:moveOneScreenEast()
end

function show_hints()
  hs.hints.windowHints()
end

function toggle_maximized_window()
  local win = hs.window.focusedWindow()
  hs.timer.doAfter(0.5, function()
    win:setFullScreen(not win:isFullScreen())
  end)
end

function move_screen(direction)
  local win = hs.window.focusedWindow()
  win:setFullScreen(false)
  if direction == 'left' then
    win:moveToScreen(MAC_BOOK_SCREEN)
  else
    win:moveToScreen(DELL_SCREEN)
  end
  toggle_maximized_window()
end

-- Key Bindings

hs.hotkey.bind({'ctrl', 'cmd'}, 'H', hs.fnutils.partial(move_screen, "left"))
hs.hotkey.bind({'ctrl', 'cmd'}, 'L', hs.fnutils.partial(move_screen, "right"))
hs.hotkey.bind({'ctrl', 'alt', 'cmd'}, 'c', center_screen)
hs.hotkey.bind({'ctrl', 'alt', 'cmd'}, 'f', full_screen)
hs.hotkey.bind({'ctrl', 'alt', 'cmd'}, 'r', size_restore)
-- hs.hotkey.bind({'ctrl', 'cmd'}, 'H', move_right)
-- hs.hotkey.bind({'ctrl', 'cmd'}, 'L', move_left)
hs.hotkey.bind({'shift', 'cmd'}, 'h', show_hints)
hs.hotkey.bind({'shift', 'cmd'}, 'm', toggle_maximized_window)

-- Toggle focus to other monitor
