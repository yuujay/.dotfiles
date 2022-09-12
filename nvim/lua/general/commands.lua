vim.cmd([[
    match RedundantSpaces /\\s\\+$\\| \\+\\ze\\t/
    filetype plugin on
    syntax on
    ]])

    -- TODO: These colors are overridden by themes. Fix these overrides with the theme
    -- 'highlight ColorColumn ctermbg=grey guibg=grey',
    -- 'highlight CursorLine guibg=#403000 ctermbg=236 cterm=none term=none',
    -- 'highlight NvimTreeFolderIcon guibg=blue',
    -- 'highlight RedundantSpaces ctermbg=red guibg=red',
    -- 'highlight SignColumn ctermbg=black guibg=black',
    -- 'highlight Visual  guifg=#000000 guibg=#FFFFFF gui=none',
    -- The settings below are not required since themes and colorschemes are now in use
