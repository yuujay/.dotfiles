-- App Sizing
hs.hotkey.bind(hyper, 'm', toggleMaximizedWindow)
hs.hotkey.bind(hyper, 'c', centerScreen)
hs.hotkey.bind(hyper, 'f', fullScreen)
hs.hotkey.bind(hyper, 'r', sizeRestore)

-- move apps between monitors
hs.hotkey.bind(cmd_ctrl, 'h', moveAppLeft)
hs.hotkey.bind(cmd_ctrl, 'l', moveAppRight)

-- Shortcuts to open the app
-- NOTE: Update `helpMenu` in `shortcuts` when anything in this block changes
hs.hotkey.bind({'alt'}, '0', helpMenu)
hs.hotkey.bind({'alt'}, 'B', openAppBinding('Safari'))
hs.hotkey.bind({'alt'}, 'C', openAppBinding('Google Chrome'))
hs.hotkey.bind({'alt'}, 'D', openAppBinding('DBeaver'))
hs.hotkey.bind({'alt'}, 'F', openAppBinding('Finder'))
hs.hotkey.bind({'alt'}, 'I', openAppBinding('IntelliJ IDEA'))
hs.hotkey.bind({'alt'}, 'M', openAppBinding('Microsoft Teams'))
hs.hotkey.bind({'alt'}, 'O', openAppBinding('Microsoft Outlook'))
hs.hotkey.bind({'alt'}, 'S', openAppBinding('Screen Sharing'))
hs.hotkey.bind({'alt'}, 'T', openAppBinding('iTerm'), fullScreen)
hs.hotkey.bind({'alt'}, 'V', openAppBinding('Visual Studio Code'))
hs.hotkey.bind({'alt'}, 'X', openAppBinding('Firefox'))
hs.hotkey.bind({'alt'}, 'Z', openAppBinding('KeyCastr'))

