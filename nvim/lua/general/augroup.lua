 -- TODO - Fix `_remove_whitespace` from moving to the start of the line after save
-- augroup _remove_whitespace
--     autocmd!
--     autocmd BufWrite * mark ' | silent! %s/\s\+$// | norm ''
-- augroup END

 vim.cmd([[
    augroup _git
        autocmd!
        autocmd FileType gitcommit setlocal wrap
        autocmd FileType gitcommit setlocal spell spelllang=en_us
        autocmd FileType gitcommit nnoremap <buffer> <silent> <leader>e z=
        autocmd FileType gitcommit setlocal spell
        autocmd FileType gitcommit setlocal spellsuggest+=10
    augroup end

    augroup _vim_fugitive
        autocmd!
        autocmd BufWritePost * GitGutter
        autocmd FileType fugitive nnoremap <buffer> <silent> q dq
        autocmd FileType fugitive nnoremap <buffer> <silent> d =
        autocmd FileType fugitive nnoremap <buffer> <silent> <ESC> :q<CR>
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

    augroup _yank
        autocmd!
        autocmd TextYankPost * silent! lua vim.highlight.on_yank{ timeout = 400 }
    augroup END

    augroup UJG
        autocmd!
        autocmd FileType help noremap <buffer> <silent> q :q<CR>
        autocmd FileType help noremap <buffer> <silent> <ESC> :q<CR>
    augroup END
]])