
function openUrl(url)
    return function()
        hs.urlevent.openURL(url)
    end
end

-- Shortcuts to open URL
hs.hotkey.bind(alt_ctrl, 'a', openUrl('https://esso.mathworks.com/idp/startSSO.ping?PartnerSpId=urn%3Aamazon%3Awebservices'))
hs.hotkey.bind(alt_ctrl, 'c', openUrl('https://confluence.mathworks.com/display/AOS/gumamahe'))
hs.hotkey.bind(alt_ctrl, 'g', openUrl('https://github.mathworks.com/search?o=desc&q=topic%3Awebaddons+org%3Adevelopment&s=updated&type=Repositories'))
hs.hotkey.bind(alt_ctrl, 'j', openUrl('https://jira.mathworks.com/secure/RapidBoard.jspa?rapidView=961&selectedIssue=AOS-5705&quickFilter=11350'))
hs.hotkey.bind(alt_ctrl, 'm', openUrl('https://www.gmail.com'))
hs.hotkey.bind(alt_ctrl, 'o', openUrl('https://outlook.office365.com/mail/'))
hs.hotkey.bind(alt_ctrl, 't', openUrl('https://trello.com/b/xnp7ug9W/dev-environment'))
