set nocompatible

" Remove any trailing whitespace that is in the file autocmd BufRead,BufWrite * if ! &bin | silent! %s/\s\+$//ge | endif

set autoindent
set colorcolumn=80
set cursorline
set expandtab
set hls
set incsearch
set noswapfile
set nu
set rnu
set shiftwidth=4
set showcmd
set showmatch
set softtabstop=4
set t_Co=256
set tabstop=4
set wrap
syntax on

" set list
" set lcs=space:·

highlight ColorColumn ctermbg=blue guibg=lightgrey
highlight CursorLine ctermbg=30

" enable file type detection
filetype plugin indent on

" Clipboard sets vim's clipboard to be globally used.
set clipboard=unnamed

" This configuration makes backspace behave more reasonably, in that you can
" backspace over anything.
set backspace=indent,eol,start

" use 4 spaces instead of tabs during formatting
" tab completion for files/bufferss
set wildmode=longest,list
set wildmenu

" ------------------- vim + tmux --------------------------------------

"Automatically rebalance windows on vim resize. Becomes essential while
"working with vim and tmux
autocmd VimResized * :wincmd =

" zoom a vim pane, <C-w>= to re-balance - NEED TO FIGURE THIS OUT.
" If not use the plugin https://github.com/dhruvasagar/vim-zoom
" nnoremap <leader>0 :wincmd _<cr>:wincmd \|<cr>
" nnoremap <leader>= :wincmd =<cr>

" ------------------------- REMAPPING ------------------------------
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
" map - :nohls<cr>

" ------------------------- REMAPPING END ------------------------------


"---------------------- PLUGIN INSTATTION ------------------------------

if empty(glob('~/.vim/autoload/plug.vim'))
   silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
     \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
   autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

" Plug 'neoclide/coc.nvim' ",  {'tag': '*', 'do': { -> coc#util#install()}}

" Plug 'dense-analysis/ale'
Plug 'https://github.com/ngmy/vim-rubocop.git'
Plug 'https://github.com/Yggdroot/indentLine.git'
Plug 'https://github.com/christoomey/vim-sort-motion.git'
Plug 'https://github.com/ctrlpvim/ctrlp.vim.git'
Plug 'https://github.com/easymotion/vim-easymotion.git'  "invoke by <Leader><Leader>s
Plug 'https://github.com/elzr/vim-json.git'
Plug 'https://github.com/jiangmiao/auto-pairs.git'
Plug 'https://github.com/powerline/fonts.git'
Plug 'https://github.com/scrooloose/nerdtree.git'
Plug 'https://github.com/sjl/gundo.vim.git'
Plug 'https://github.com/tpope/vim-commentary.git'
Plug 'https://github.com/tpope/vim-endwise.git'
Plug 'https://github.com/tpope/vim-fugitive'
Plug 'https://github.com/tpope/vim-surround.git'
Plug 'https://github.com/vim-airline/vim-airline.git'
Plug 'https://github.com/christoomey/vim-tmux-navigator.git'
Plug 'https://github.com/christoomey/vim-tmux-runner.git'

call plug#end()

"---------------------- PLUGIN INSTATTION END --------------------------



" ---------------------  PLUGIN SHORTCUTS ------------------------------
" Ctrl-P
let g:ctrlp_map = '<c-p>'

" NodeTree
nnoremap <Leader>n :NERDTreeToggle<CR>
nnoremap <Leader>f :NERDTreeFind<CR>

" Gundo
nnoremap <Leader>g :GundoToggle<CR>

" ---------------------  PLUGIN SHORTCUTS END --------------------------


" ---------------------  PLUGIN CONFIGURATIONS -------------------------
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
"


" COC
" set cmdheight=2  " Better display for messages
" set updatetime=300  " Smaller updatetime for CursorHold & CursorHoldI
" set shortmess+=c  " don't give |ins-completion-menu| messages.

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
