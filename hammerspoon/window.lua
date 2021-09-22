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

function moveAppLeft()
  local window = hs.window.focusedWindow()
  if window:isFullScreen() then
    window:setFullScreen(false)
    window:moveOneScreenWest()
    toggleMaximizedWindow()
  else
    window:moveOneScreenWest()
  end
end

function moveAppRight()
  local window = hs.window.focusedWindow()
  if window:isFullScreen() then
    window:setFullScreen(false)
    window:moveOneScreenEast()
    toggleMaximizedWindow()
  else
    window:moveOneScreenEast()
  end
end

function toggleMaximizedWindow()
  local window = hs.window.focusedWindow()
  hs.timer.doAfter(0.5, function()
    window:setFullScreen(not window:isFullScreen())
  end)
end

function changeFocus(direction)
  local current_window = hs.window.focusedWindow()
  local current_screen = current_window:screen()

  if(direction == 'left') then
    local left_screen = current_screen:toWest()
    local point_on_left_screen = { x = left_screen:frame().x + 10, y = 300.0}
    hs.eventtap.leftClick(point_on_left_screen)
  else
    local right_screen = current_screen:toEast()
    local point_on_right_screen = { x = right_screen:frame().x + 10, y = 300.0}
    hs.eventtap.leftClick(point_on_right_screen)
  end
end

function showHints()
  hs.hints.windowHints() -- This shows all the windows available to select from
end
