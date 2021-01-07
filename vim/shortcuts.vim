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
map <C-W> :bw<CR>
map ss :w<CR>

" Replace text under cursor
nnoremap <leader>r :%s/\<<C-r><C-w>\>/
nnoremap <leader>R :%s/\<<C-r><C-w>\>//g<Left><Left>

" Disable search highlights with a button click.
map <leader>` :nohls<cr>

" Reload vimrc
map <leader><leader>rr :source ~/.vimrc<CR>:echom 'vimrc reloaded'<CR>

" Shortcuts to open some common files
map <leader><leader>la :e ~/.aliases<CR>
map <leader><leader>ya :e /System/Volumes/Data/mathworks/devel/sandbox/gumamahe/Cwebaddons.local/docker-compose.yml<CR>
map <leader><leader>rc :e ~/.vimrc<CR>
map <leader><leader>tc :e ~/.tmux.conf<CR>

" Reload current buffer
map <leader><leader>5 :e!<CR>

" Close preview buffer
map <Esc><leader> :pc<CR>

" Install plugins using vundle.
map <leader><leader>p :PlugInstall<CR>

" Toggles

map 12 :set nu!<CR>
map 123 :set rnu!<CR>
map 1c :set cursorline!<CR>
map 1l :Limelight!!<CR>
