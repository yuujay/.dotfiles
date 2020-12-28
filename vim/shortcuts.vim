let mapleader="\<Space>"

" Remap <Esc> key to `ff` so that Caps lock is freed up for tmux prefix

inoremap ff <Esc>
nnoremap ff <Esc>
vnoremap ff <Esc>

nnoremap ; :
vnoremap ; :

nnoremap <CR> o<Esc>k
nnoremap <Space> i<Space><Esc>

" move among buffers

map <leader>h :bprev<CR>
map <leader>l :bnext<CR>
map <leader>lb :ls<CR>:b<Space>

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
map <Esc><leader> :pc<CR>

" Toggles

map 12 :set nu!<CR>
map 123 :set rnu!<CR>
map 1c :set cursorline!<CR>
map 1l :Limelight!!<CR>
