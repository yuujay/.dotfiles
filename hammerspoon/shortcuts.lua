function openApp(name)
    return function()
        if not hs.application.launchOrFocus(name) then
          hs.alert.show(name..' - Not found')
        end
        if name == 'Finder' then
            hs.appfinder.appFromName(name):activate()
        end
    end
end

function helpMenu()
  hs.alert.show(' Alt-C = Chrome \n Alt-D = DBeaver \n Alt-F = Finder \n Alt-I = IntelliJ \n Alt-M = Teams \n Alt-S = Screen Sharing \n Alt-T = iTerm \n Alt-V VSCode')
end

