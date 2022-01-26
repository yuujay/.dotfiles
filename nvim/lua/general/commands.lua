Command.cmd({
    'syntax on',
    'filetype plugin on',
    'highlight RedundantSpaces ctermbg=red guibg=red',
    'highlight NvimTreeFolderIcon guibg=blue',
    "match RedundantSpaces /\\s\\+$\\| \\+\\ze\\t/",
    'highlight ColorColumn ctermbg=blue guibg=blue',
    -- 'highlight CursorLine guibg=#303000 ctermbg=236 cterm=none term=none',
    -- The settings below are not required since themes and colorschemes are now in use
    -- 'highlight SignColumn ctermbg=black guibg=black',
})

