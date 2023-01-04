-- Pin the new tab
local function pin_tab()
    -- TODO: This doesn't pin tab if we run this from a full screen app.
    local pin_tab_script = [[
    tell application "Google Chrome" to activate
    tell application "System Events" to ¬
        click ¬
            menu item "Pin Tab" of ¬
            menu 1 of ¬
            menu bar item "Tab" of ¬
            menu bar 1 of ¬
            application process "Chrome"
    ]]

    hs.applescript.applescript(pin_tab_script)
end

local function randomMackingMusic()
    return function()
        local musicLibrary = {}
        musicLibrary[1] = 'https://www.youtube.com/watch?v=kxbGIMVKacg&ab_channel=ChillMusicLab'
        musicLibrary[2] = 'https://www.youtube.com/watch?v=LVbUNRwpXzw&ab_channel=ChillMusicLab'
        musicLibrary[3] = 'https://www.youtube.com/watch?v=e3L1PIY1pN8&ab_channel=STEEZYASFUCK'
        musicLibrary[4] = 'https://www.youtube.com/watch?v=ymLNcAwYmBM&ab_channel=CandyMusicRoom'
        musicLibrary[5] = 'https://www.youtube.com/watch?v=aVNe2w0AljU&ab_channel=lofigeek'

        local seed = math.random(1, #musicLibrary)
        local activeApp = hs.application.frontmostApplication()
        local appName = activeApp:name()

        hs.urlevent.openURL(musicLibrary[ seed ], {new_window = true})
        local desktop = hs.window.desktop()
        desktop:focus()
        pin_tab()

        -- TODO: This doesn't bring back foucs to the previous applicaiton
        if string.match(appName, "^iTerm") then
            appName = "iTerm"
        end
        hs.application.launchOrFocus(appName)
    end
end

hs.hotkey.bind(ALT_CTRL, 'y', randomMackingMusic())
