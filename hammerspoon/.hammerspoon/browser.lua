local function openUrl(url)
    return function()
        hs.urlevent.openURL(url)
    end
end

-- Shortcuts to open URL
hs.hotkey.bind(ALT_CMD, 'a', openUrl('https://esso.mathworks.com/idp/startSSO.ping?PartnerSpId=urn%3Aamazon%3Awebservices'))
hs.hotkey.bind(ALT_CMD, 'c', openUrl('https://confluence.mathworks.com/pages/viewpage.action?pageId=841483897'))
hs.hotkey.bind(ALT_CMD, 'd', openUrl('https://github.com/yuujay/dotfiles/'))
hs.hotkey.bind(ALT_CMD, 'g', openUrl('https://github.mathworks.com/search?o=desc&q=topic%3Awebaddons+org%3Adevelopment&s=updated&type=Repositories'))
hs.hotkey.bind(ALT_CMD, 'j', openUrl('https://jira.mathworks.com/secure/RapidBoard.jspa?rapidView=961&selectedIssue=AOS-5705&quickFilter=11350'))
hs.hotkey.bind(ALT_CMD, 'm', openUrl('https://www.gmail.com'))
hs.hotkey.bind(ALT_CMD, 'o', openUrl('https://outlook.office365.com/mail/'))
hs.hotkey.bind(ALT_CMD, 't', openUrl('https://trello.com/b/xnp7ug9W/dev-environment'))
