DELL_SCREEN = hs.screen.allScreens()[1]
MAC_BOOK_SCREEN = hs.screen.allScreens()[2]

function fullScreen()
  local window = hs.window.focusedWindow()
  window:maximize()
end

function centerScreen()
  local window = hs.window.focusedWindow()
  window:centerOnScreen()
end

function sizeRestore()
  hs.alert.show("FIX: App size restore function in .hammersoon/window.lua!")
end

function moveLeft()
  local window = hs.window.focusedWindow()
  window:moveOneScreenWest()
end

function moveRight()
  local window = hs.window.focusedWindow()
  window:moveOneScreenEast()
end

function showHints()
  hs.hints.windowHints()
end

function toggleMaximizedWindow()
  local window = hs.window.focusedWindow()
  hs.timer.doAfter(0.5, function()
    window:setFullScreen(not window:isFullScreen())
  end)
end

function moveToScreen(direction)
  local window = hs.window.focusedWindow()
  window:setFullScreen(false)
  if(direction == 'left') then
    window:moveToScreen(MAC_BOOK_SCREEN)
  else
    window:moveToScreen(DELL_SCREEN)
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

