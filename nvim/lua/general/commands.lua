Command.cmd({
    'syntax on',
    'filetype plugin on',
    'highlight RedundantSpaces ctermbg=red guibg=red',
    'highlight NvimTreeFolderIcon guibg=blue',
    "match RedundantSpaces /\\s\\+$\\| \\+\\ze\\t/",
    'highlight ColorColumn ctermbg=blue guibg=blue',
    'highlight CursorLine guibg=#303000 ctermbg=236 cterm=none term=none',
    'highlight SignColumn ctermbg=black guibg=black',
})


Augroup.cmds({
    -- highlight on yank!!!
    highlight_yank = {
        {"TextYankPost", "* silent! lua require'vim.highlight'.on_yank({timeout = 400})"},
    },
    -- highlight on paste!!! TODO: FIX THIS FOR PASTE
    highlight_paste = {
        {"TextYankPost", "* silent! lua require'vim.highlight'.on_yank({timeout = 400})"},
    },

    autoload_changes = {
	{"BufEnter","* if mode() !~ '\\v(c|r.?|!|t)' && getcmdwintype() == '' | checktime | endif"},
    },
})
