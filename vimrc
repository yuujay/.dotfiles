set nocompatible

" Remove any trailing whitespace that is in the file

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

" ------------------------- REMAPPING ------------------------------
inoremap jj <Esc>

nnoremap ; :
vnoremap ; :

let mapleader="\<Space>"

" move among buffers 
map <Leader>j :bnext<CR>
map <Leader>k :bprev<CR>
map <Leader>b :b
map <Leader>l :ls<CR>:b<Space>

" File Operation Shortcuts
map ss :w<CR>
map <C-W> :bw<CR>
map <C-O> :e<Space>
map <C-N> :enew<CR>
map <C-A> :w<Space>

" ------------------------- REMAPPING END ------------------------------


"---------------------- PLUGIN INSTATTION ------------------------------

if empty(glob('~/.vim/autoload/plug.vim'))
   silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
     \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
   autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

" Plug 'https://github.com/Valloric/YouCompleteMe.git'
" Plug 'https://github.com/dense-analysis/ale.git'
" TODO check vinegar against nerdtree for file tree
Plug 'https://github.com/christoomey/vim-sort-motion.git'
Plug 'https://github.com/easymotion/vim-easymotion.git'
Plug 'https://github.com/jiangmiao/auto-pairs.git'
Plug 'https://github.com/powerline/fonts.git'
Plug 'https://github.com/scrooloose/nerdtree.git'
Plug 'https://github.com/sjl/gundo.vim.git'
Plug 'https://github.com/tpope/vim-commentary.git'
Plug 'https://github.com/tpope/vim-endwise.git'
Plug 'https://github.com/tpope/vim-surround.git'
Plug 'https://github.com/vim-airline/vim-airline.git'

call plug#end()

"---------------------- PLUGIN INSTATTION END --------------------------


" ---------------------  PLUGIN CONFIGURATIONS -------------------------
" nerdtree
nnoremap <Leader>n :NERDTreeToggle<CR>
nnoremap <Leader>f :NERDTreeFind<CR>

" airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

" Gundo
nnoremap <Leader>g :GundoToggle<CR>

