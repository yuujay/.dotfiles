hs.hotkey.bind({"cmd", "alt", "ctrl"}, "W", function()
    hs.alert.show("Hello World!")
end)

local detectTeams = function()

end

layoutSingleScreen = function()
  local ide = detectIDE()
  local right
  if ide then
    right = {
      {ide, nil, LAB_RIGHT_MONITOR, u(0, 0, 3/5, 1), nil, nil, visible=true},
      {'iTerm2', nil, LAB_RIGHT_MONITOR, u(3/5, 0, 2/5, 1), nil, nil, visible=true}
    }
  else
    right = {{'iTerm2', nil, LAB_RIGHT_MONITOR, u(0, 0, 1, 1), nil, nil, visible=true}}
  end

  local mb = {
    {'Keybase', nil, MACBOOK_MONITOR, u(0, 0, 1/2, 1), nil, nil, visible=true},
    {'Mail', nil, MACBOOK_MONITOR, u(1/2, 0, 1/2, 1), nil, nil, visible=true},
    {'Slack', nil, MACBOOK_MONITOR, u(0, 0, 1, 1), nil, nil, visible=false},
    {'Spotify', nil, MACBOOK_MONITOR, u(0, 0, 1, 1), nil, nil, visible=false}
  }
  return ide, concat(left, right, mb)
end

layoutWeekendSingleScreen = function()

end

layoutDualScreen = function()

end

layoutWeekendDualScreen = function()

end

rescue = function()
  local screen = hs.screen.mainScreen()
  local screenFrame = screen:fullFrame()
  local wins = hs.window.visibleWindows()
  for _, win in ipairs(wins) do
    local frame = win:frame()
    if not frame:inside(screenFrame) then
      win:moveToScreen(screen, true, true)
    end
  end
end
