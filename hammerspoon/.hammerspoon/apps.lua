local function openAppBinding(name)
    return function()
        if not hs.application.launchOrFocus(name) then
          hs.alert.show(name..' - Not found')
        end
        if name == 'Finder' then
            hs.appfinder.appFromName(name):activate()
        end
    end
end

-- Shortcuts to open the app
-- NOTE: Update `helpMenu` in `shortcuts` when anything in this block changes
hs.hotkey.bind({'alt'}, 'C', openAppBinding('Google Chrome'))
hs.hotkey.bind({'alt'}, 'D', openAppBinding('DBeaver'))
hs.hotkey.bind({'alt'}, 'F', openAppBinding('Finder'))
hs.hotkey.bind({'alt'}, 'I', openAppBinding('IntelliJ IDEA'))
hs.hotkey.bind({'alt'}, 'M', openAppBinding('Microsoft Teams'))
hs.hotkey.bind({'alt'}, 'N', openAppBinding('Obsidian'))
hs.hotkey.bind({'alt'}, 'O', openAppBinding('Microsoft Outlook'))
hs.hotkey.bind({'alt'}, 'Y', openAppBinding('Screen Sharing'))
hs.hotkey.bind({'alt'}, 'T', openAppBinding('iTerm'))
hs.hotkey.bind({'alt'}, 'V', openAppBinding('Visual Studio Code'))
hs.hotkey.bind({'alt'}, 'X', openAppBinding('Firefox'))
hs.hotkey.bind({'alt'}, 'Z', openAppBinding('KeyCastr'))

