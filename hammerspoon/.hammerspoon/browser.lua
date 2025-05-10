local function openUrl(url)
    return function()
        hs.urlevent.openURL(url)
    end
end

-- Shortcuts to open URL
hs.hotkey.bind(HYPER, 'a', openUrl('https://esso.mathworks.com/idp/startSSO.ping?PartnerSpId=urn%3Aamazon%3Awebservices'))
hs.hotkey.bind(HYPER, 'c', openUrl('https://confluence.mathworks.com/pages/viewpage.action?pageId=841483897'))
hs.hotkey.bind(HYPER, 'd', openUrl('https://github.com/yuujay/.dotfiles/'))
hs.hotkey.bind(HYPER, 'g', openUrl('https://github.mathworks.com/search?q=topic%3Amos+org%3Adevelopment&type=Repositories'))
hs.hotkey.bind(HYPER, 'j', openUrl(''))
hs.hotkey.bind(HYPER, 'm', openUrl('https://www.gmail.com'))
hs.hotkey.bind(HYPER, 'o', openUrl('https://outlook.office365.com/mail/'))
hs.hotkey.bind(HYPER, 't', openUrl('https://trello.com/b/xnp7ug9W/dev-environment'))
