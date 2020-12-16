set nocompatible
set autoindent
set colorcolumn=80
set cursorline
set expandtab
set hls
set incsearch
set noswapfile
set nu
set rnu
set showcmd
set showmatch
set softtabstop=4
set shiftwidth=4
set tabstop=4
set t_Co=256
set wrap
syntax on

" Need this for using fonts
set encoding=UTF-8

set list
set lcs=tab:▸\ ,eol:¬,space:·

" Highlight trailing spaces
highlight RedundantSpaces ctermbg=red guibg=red
match RedundantSpaces /\s\+$\| \+\ze\t/

" Set cursorLine and cursor pointer colors
highlight ColorColumn ctermbg=blue guibg=lightgrey
highlight CursorLine ctermbg=30

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

" ---------------------------------------------------------
"           vim + tmux
" ---------------------------------------------------------

"Automatically rebalance windows on vim resize. Becomes essential while
"working with vim and tmux
autocmd VimResized * :wincmd =

" -------------------------------------------------------
"           ToggleBackground
" -------------------------------------------------------
inoremap jj <Esc>

nnoremap ; :
vnoremap ; :

nmap <CR> o<Esc>k

let mapleader="\<Space>"

" move among buffers
map <Leader>k :bnext<CR>
map <Leader>j :bprev<CR>
map <Leader>b :b
map <Leader>l :ls<CR>:b<Space>

" File Operation Shortcuts
map ss :w<CR>
map <C-W> :bw<CR>
map <C-O> :e<Space>
map <C-N> :enew<CR>
map <C-A> :w<Space>

" Disable search highlights with a button click.
map <leader>/ :nohls<cr>

"---------------------- ------------------------------
"           PLUGIN INSTALLATION
"---------------------- ------------------------------
if empty(glob('~/.vim/autoload/plug.vim'))
   silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
     \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
   autocmd VimEnter * PlugInstall --sync | source $MYVIMRC


endif

call plug#begin('~/.vim/plugged')

Plug 'dense-analysis/ale'
Plug 'neoclide/coc.nvim' ",  {'tag': '*', 'do': { -> coc#util#install()}}

" --- SOME NICE TO HAVE PLUGINS ---
" https://github.com/MattesGroeger/vim-bookmarks
" https://github.com/mg979/vim-visual-multi
" https://github.com/terryma/vim-multiple-cursors
" https://github.com/tpope/vim-rails
" https://github.com/mhinz/vim-startify
" Plug 'https://github.com/ctrlpvim/ctrlp.vim.git'

Plug 'https://github.com/Yggdroot/indentLine.git'
Plug 'junegunn/fzf', { 'do': { -> fzf#install()  }  }
Plug 'https://github.com/junegunn/fzf.vim'
Plug 'https://github.com/christoomey/vim-sort-motion.git'
Plug 'https://github.com/christoomey/vim-tmux-navigator.git'
Plug 'https://github.com/christoomey/vim-tmux-runner.git'
Plug 'https://github.com/easymotion/vim-easymotion.git'  "invoke by <Leader><Leader>s
Plug 'https://github.com/elzr/vim-json.git'
Plug 'https://github.com/jiangmiao/auto-pairs.git'
Plug 'https://github.com/ngmy/vim-rubocop.git'
Plug 'https://github.com/powerline/fonts.git'
Plug 'https://github.com/scrooloose/nerdtree.git'
Plug 'https://github.com/sjl/gundo.vim.git'
Plug 'https://github.com/tpope/vim-commentary.git'
Plug 'https://github.com/tpope/vim-endwise.git'
Plug 'https://github.com/junegunn/limelight.vim'
Plug 'https://github.com/tpope/vim-fugitive'
Plug 'https://github.com/tpope/vim-surround.git'
Plug 'https://github.com/vim-airline/vim-airline.git'
Plug 'https://github.com/ryanoasis/vim-devicons'  "This needs to be at the end since we devicons need to loaded after all plugins

call plug#end()

" ---------------------------------------------------
"           PLUGIN SHORTCUTS
" ---------------------------------------------------

" Ctrl-P
let g:ctrlp_map = '<c-p>'

" NodeTree
nnoremap <Leader>n :NERDTreeToggle<CR>

" Start fzf file finder
nnoremap <C-p> :Files<CR>
nnoremap <leader>p :Files<CR>
nnoremap <C-F> :Ag<CR>
nnoremap <leader>f :Ag<CR>
nnoremap <leader>c :BCommits<CR>
nnoremap <leader>t :Colors<CR>
nnoremap <leader>L :BLines<CR>

" Gundo
nnoremap <Leader>g :GundoToggle<CR>

" ----------------------------------------------
"           PLUGIN CONFIGURATIONS
" ----------------------------------------------
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
" shortcuts for vertical and horizontal splits
" Find all in current directory
" Git Diffs on the vi editor
" Toggle certain settings such as relative numbers
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

" CtrlP
" let g:ctrlp_cmd = 'CtrlP'
" let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
" let g:ctrlp_working_path_mode = 'ra'



