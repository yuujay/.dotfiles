Command.cmd({
    'syntax on',
    'filetype plugin on',
    'highlight RedundantSpaces ctermbg=red guibg=red',
    "match RedundantSpaces /\\s\\+$\\| \\+\\ze\\t/",
    'highlight ColorColumn ctermbg=blue guibg=blue',
    'highlight CursorLine guibg=#303000 ctermbg=236 cterm=none term=none',
    'highlight SignColumn ctermbg=black guibg=black',
--    "autocmd FocusGained,BufEnter,CursorHold,CursorHoldI * if mode() !~ '\\v(c|r.?|!|t)' && getcmdwintype() == '' | checktime | endif"
-- TODO: FIX autoread
-- Triger `autoread` when files changes on disk
-- https://unix.stackexchange.com/questions/149209/refresh-changed-content-of-file-opened-in-vim/383044#383044
-- https://vi.stackexchange.com/questions/13692/prevent-focusgained-autocmd-running-in-command-line-editing-mode
    -- tab confs
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
})
