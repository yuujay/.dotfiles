PRIMARY_SCREEN = hs.screen.primaryScreen()

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
  if window:isFullScreen() then
    window:setFullScreen(false)
    window:moveOneScreenWest()
    toggleMaximizedWindow()
  else
    window:moveOneScreenWest()
  end
end

function moveRight()
  local window = hs.window.focusedWindow()
  if window:isFullScreen() then
    window:setFullScreen(false)
    window:moveOneScreenEast()
    toggleMaximizedWindow()
  else
    window:moveOneScreenEast()
  end
end

function showHints()
  hs.hints.windowHints() -- This shows all the windows available to select from
end

function toggleMaximizedWindow()
  local window = hs.window.focusedWindow()
  hs.timer.doAfter(0.5, function()
    window:setFullScreen(not window:isFullScreen())
  end)
end

function changeFocus(direction)
  -- TODO: Use PRIMARY_SCREEN to shift focus
  if(direction == 'left') then
    local current_screen = hs.window.focusedWindow():screen()
    hs.eventtap.leftClick({x=-10,y=500})
  else
    hs.eventtap.leftClick({x=10,y=500})
  end
end
