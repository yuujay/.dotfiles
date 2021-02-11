DELL_SCREEN = hs.screen.allScreens()[1].name
MAC_BOOK_SCREEN = hs.screen.allScreens()[2].name

-- TODO: Fix the WHOLE layout configs
-- local windowLayout = {
--     {"iTerm", nil,         DELL_SCREEN, hs.layout.maximized, nil, nil},
--     {"Google Chrome", nil, DELL_SCREEN, hs.layout.maximized, nil, nil}
-- }

local laptopScreen = "Color LCD"
local windowLayout = {
  {"Safari",  nil,          laptopScreen, hs.layout.left50,    nil, nil},
  {"Microsoft Teams",    nil,          laptopScreen, hs.layout.right50,   nil, nil},
}
function weekendLayout()
  hs.alert.show(DELL_SCREEN)
  hs.layout.apply(windowLayout)
end

