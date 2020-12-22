" Limelight
" Color name (:help cterm-colors) or ANSI code
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 240
" Color name (:help gui-colors) or RGB color
let g:limelight_conceal_guifg = 'DarkGray'
let g:limelight_conceal_guifg = '#777777'
" Default: 0.5
let g:limelight_default_coefficient = 0.7
" Number of preceding/following paragraphs to include (default: 0)
let g:limelight_paragraph_span = 1
" Beginning/end of paragraph
"   When there's no empty line between the paragraphs
"   and each paragraph starts with indentation
let g:limelight_bop = '^\s'
let g:limelight_eop = '\ze\n^\s'
" Highlighting priority (default: 10)
"   Set it to -1 not to overrule hlsearch
let g:limelight_priority = -1
" TODO: Delete this limelight configs once you have them working


" devicons
" loading the plugin
let g:webdevicons_enable = 1

" airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

" Ale
" Set specific linters
let g:ale_linters = {
    \   'javascript': ['eslint'],
    \   'ruby': ['standardrb' , 'rubocop'],
    \}

" Only run linters named in ale_linters settings.
let g:ale_linters_explicit = 1
let g:airline#extensions#ale#enabled = 1
let g:ale_sign_column_always = 1

" TODO:
" Removal of trailing spaces
" Find all in current directory
" Read comments about commits inside fzf:  https://dev.to/christalib/i-spent-3-years-configuring-n-vim-and-this-what-i-learnt-22on

" COC
" For JS errors during inital setup use: https://github.com/neoclide/coc.nvim/issues/651
let g:coc_disable_startup_warning = 1
set cmdheight=2  " Better display for messages
set updatetime=300  " Smaller updatetime for CursorHold & CursorHoldI
set shortmess+=c  " don't give |ins-completion-menu| messages.

" COC-Solargraph
set hidden
let g:LanguageClient_serverCommands = {
    \ 'rust': ['~/.cargo/bin/rustup', 'run', 'stable', 'rls'],
    \ 'javascript': ['/usr/local/bin/javascript-typescript-stdio'],
    \ 'javascript.jsx': ['tcp://127.0.0.1:2089'],
    \ 'python': ['/usr/local/bin/pyls'],
    \ 'ruby': ['tcp://localhost:7658'],
    \ }
let g:LanguageClient_autoStop = 0


" http://stackoverflow.com/a/21152503/153718
" function! GitTracks(...)
"   let file = a:0 ? a:1 : expand('%')
"   let message = system('git ls-files -- ' . file)
"   let is_tracked = (message =~ '^fatal:') ? 0 : strlen(message)
"   return is_tracked
" endfun

" let g:airline_section_b = "%{GitTracks() ? fugitive#head() : 'NOT tracked!'}"

