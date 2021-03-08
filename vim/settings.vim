" set rnu
set autoindent
set colorcolumn=80
set cursorline
set hls
set incsearch
set mouse=a
set nocompatible
set noswapfile
set nu
set showcmd
set showmatch
set signcolumn=yes
set t_Co=256
set wrap
syntax on

" Tab/Space setting

set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=2

" Need this for using fonts
set encoding=UTF-8

" set list
" set lcs=tab:▸\ ,eol:¬
" space:·

" Highlight trailing spaces
highlight RedundantSpaces ctermbg=red guibg=red
match RedundantSpaces /\s\+$\| \+\ze\t/

" Set colors for cursorLine, signcolumn.
highlight ColorColumn ctermbg=blue guibg=blue
highlight CursorLine guibg=#303000 ctermbg=236 cterm=none term=none
highlight SignColumn ctermbg=black guibg=black

" enable file type detection
filetype plugin indent on

" Clipboard sets vim's clipboard to be globally used.
set clipboard=unnamed

" This configuration makes backspace behave more reasonably, in that you can
" backspace over anything.
set backspace=indent,eol,start

" tab completion for files/bufferss
set wildmode=longest,list
set wildmenu

" Triger `autoread` when files changes on disk
" https://unix.stackexchange.com/questions/149209/refresh-changed-content-of-file-opened-in-vim/383044#383044
" https://vi.stackexchange.com/questions/13692/prevent-focusgained-autocmd-running-in-command-line-editing-mode
autocmd FocusGained,BufEnter,CursorHold,CursorHoldI *
        \ if mode() !~ '\v(c|r.?|!|t)' && getcmdwintype() == '' | checktime | endif

" Notification after file change
" https://vi.stackexchange.com/questions/13091/autocmd-event-for-autoread
autocmd FileChangedShellPost *
  \ echohl WarningMsg | echo "File changed on disk. Buffer reloaded." | echohl None
