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

" TODO:  Trying to set up
"   Removal of trailing spaces
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

" Some nice to have plugins
" https://github.com/MattesGroeger/vim-bookmarks
" https://github.com/mg979/vim-visual-multi
" https://github.com/terryma/vim-multiple-cursors
" https://github.com/junegunn/fzf.vim
" https://github.com/tpope/vim-rails
" https://github.com/mhinz/vim-startify
"
"
"
"
Plug 'https://github.com/Yggdroot/indentLine.git'
Plug 'https://github.com/christoomey/vim-sort-motion.git'
Plug 'https://github.com/christoomey/vim-tmux-navigator.git'
Plug 'https://github.com/christoomey/vim-tmux-runner.git'
Plug 'https://github.com/ctrlpvim/ctrlp.vim.git'
Plug 'https://github.com/easymotion/vim-easymotion.git'  "invoke by <Leader><Leader>s
Plug 'https://github.com/elzr/vim-json.git'
Plug 'https://github.com/jiangmiao/auto-pairs.git'
Plug 'https://github.com/ngmy/vim-rubocop.git'
Plug 'https://github.com/powerline/fonts.git'
Plug 'https://github.com/scrooloose/nerdtree.git'
Plug 'https://github.com/sjl/gundo.vim.git'
Plug 'https://github.com/tpope/vim-commentary.git'
Plug 'https://github.com/tpope/vim-endwise.git'
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
nnoremap <Leader>f :NERDTreeFind<CR>

" Gundo
nnoremap <Leader>g :GundoToggle<CR>

" ----------------------------------------------
"           PLUGIN CONFIGURATIONS
" ----------------------------------------------

" devicons
" loading the plugin
let g:webdevicons_enable = 1
" " adding the flags to NERDTree
let g:webdevicons_enable_nerdtree = 1

" airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

" CtrlP
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
let g:ctrlp_working_path_mode = 'ra'

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
" shortcuts for vertical and horizontal splits
" controlP movement keys with vim bindings
" Find all in current directory
" Git Diffs on the vi editor
" Read comments about commits inside fzf:  https://dev.to/christalib/i-spent-3-years-configuring-n-vim-and-this-what-i-learnt-22on

" COC
let g:coc_disable_startup_warning = 1
set cmdheight=2  " Better display for messages
set updatetime=300  " Smaller updatetime for CursorHold & CursorHoldI
set shortmess+=c  " don't give |ins-completion-menu| messages.

" COC-Solargraph
" set hidden
" let g:LanguageClient_serverCommands = {
"     \ 'rust': ['~/.cargo/bin/rustup', 'run', 'stable', 'rls'],
"     \ 'javascript': ['/usr/local/bin/javascript-typescript-stdio'],
"     \ 'javascript.jsx': ['tcp://127.0.0.1:2089'],
"     \ 'python': ['/usr/local/bin/pyls'],
"     \ 'ruby': ['tcp://localhost:7658'],
"     \ }
" let g:LanguageClient_autoStop = 0
