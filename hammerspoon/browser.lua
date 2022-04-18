function openUrl(url)
    return function()
        hs.urlevent.openURL(url)
    end
end

