inoremap jj <Esc>

nnoremap ; :
vnoremap ; :

nmap <CR> o<Esc>k

let mapleader="\<Space>"

" move among buffers

map <leader>b :b
map <leader>h :bprev<CR>
map <leader>l :bnext<CR>
map <leader>ll :ls<CR>:b<Space>

" Split buffers

map <leader>- :split<CR>
map <leader>\ :vs<CR>
map <leader>x :close<CR>

" File Operation Shortcuts

map <C-A> :w<Space>
map <C-N> :enew<CR>
map <C-O> :e<Space>
map <C-W> :bw<CR>
map ss :w<CR>

" Replace text
nnoremap <leader>r :%s/\<<C-r><C-w>\>/
nnoremap <leader>R :%s/\<<C-r><C-w>\>//g<Left><Left>


" Disable search highlights with a button click.
map <leader>` :nohls<cr>

" Reload vimrc
map <leader><leader>rr :source ~/.vimrc<CR>:echom 'vimrc reloaded'<CR>

" Close preview buffer
map <ESC><leader> :pc<CR>

" Toggles

map `1 :set nu!<CR>
map `12 :set rnu!<CR>
