 -- TODO - Fix `_remove_whitespace` from moving to the start of the line after save
-- augroup _remove_whitespace
--     autocmd!
--     autocmd BufWrite * mark ' | silent! %s/\s\+$// | norm ''
-- augroup END

-- LIMELIGHT CONFIGS USED IN OLD VIM CONFIGS
-- -- Limelight - Turn this on when you want limelight to be enabled by default.
-- -- autocmd VimEnter * Limelight

vim.cmd([[
    augroup lsp_format
        autocmd FileType go autocmd BufWritePre <buffer> lua vim.lsp.buf.format()
    augroup end

    augroup _git
        autocmd!
        autocmd FileType gitcommit setlocal wrap
        autocmd FileType gitcommit setlocal spell spelllang=en_us
        autocmd FileType gitcommit nnoremap <buffer> <silent> <leader>e z=
        autocmd FileType gitcommit setlocal spell
        autocmd FileType gitcommit setlocal spellsuggest+=10
    augroup end

    augroup _markdown
        autocmd!
        autocmd FileType markdown setlocal wrap
        autocmd FileType markdown setlocal cc=
        autocmd FileType markdown setlocal spell spelllang=en_us
        autocmd FileType markdown nnoremap <buffer> <silent> <leader>e z=
        autocmd FileType markdown setlocal spell
        autocmd FileType markdown setlocal spellsuggest+=10
    augroup end

    augroup vim_highlight_on_yank
        autocmd!
        autocmd TextYankPost * lua vim.highlight.on_yank()
    augroup END

    augroup UJG
        autocmd!
        autocmd FileType help noremap <buffer> <silent> q :q<CR>
        autocmd FileType help noremap <buffer> <silent> <ESC> :q<CR>
    augroup END
]])
