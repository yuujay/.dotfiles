DELL_SCREEN = hs.screen.allScreens()[1]
MAC_BOOK_SCREEN = hs.screen.allScreens()[2]

function fullScreen()
  local win = hs.window.focusedWindow()
  win:maximize()
end

function centerScreen()
  local win = hs.window.focusedWindow()
  win:centerOnScreen()
end

function sizeRestore()
  hs.alert.show("FIX: App size restore function in .hammersoon/window.lua!")
end

function moveLeft()
  local win = hs.window.focusedWindow()
  win:moveOneScreenWest()
end

function moveRight()
  local win = hs.window.focusedWindow()
  win:moveOneScreenEast()
end

function showHints()
  hs.hints.windowHints()
end

function toggleMaximizedWindow()
  local win = hs.window.focusedWindow()
  hs.timer.doAfter(0.5, function()
    win:setFullScreen(not win:isFullScreen())
  end)
end

function moveToScreen(direction)
  local win = hs.window.focusedWindow()
  win:setFullScreen(false)
  if(direction == 'left') then
    win:moveToScreen(MAC_BOOK_SCREEN)
  else
    win:moveToScreen(DELL_SCREEN)
  end
  toggleMaximizedWindow()
end

function changeFocus(direction)
  -- TODO: Find a better logic to click on two different screens.
  --       Or Find a better way to bring focus to the screen.
  if(direction == 'left') then
    hs.eventtap.leftClick({x=-10,y=500})
  else
    hs.eventtap.leftClick({x=10,y=500})
  end
end

