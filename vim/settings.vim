set autoindent
set colorcolumn=80
set cursorline
set expandtab
set hls
set incsearch
set nocompatible
set noswapfile
set nu
" set rnu
set shiftwidth=2
set showcmd
set showmatch
set signcolumn=yes
set softtabstop=2
set t_Co=256
set tabstop=2
set wrap
syntax on

" Need this for using fonts
set encoding=UTF-8

set list
set lcs=tab:▸\ ,eol:¬ ",space:·

" Highlight trailing spaces
highlight RedundantSpaces ctermbg=red guibg=red
match RedundantSpaces /\s\+$\| \+\ze\t/

" Set colors for cursorLine, signcolumn

highlight ColorColumn ctermbg=blue guibg=blue
highlight CursorLine ctermbg=black guibg=black cterm=underline "bold
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

