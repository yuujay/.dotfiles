local map = vim.api.nvim_set_keymap

map('n', '<Space>', '', {})
vim.g.mapleader = ' '  -- 'vim.g' sets global variables

local options = { noremap = true }

map('n', ';', ':', {})
map('v', ';', ':', {})

-- Move among buffers
map('n', '<leader>l', ':bnext<CR>', options)
map('n', '<leader>h', ':bprev<CR>', options)

-- Nifty mappings
map('n', '<leader>a', 'GVgg', options) -- Select the entire buffer
map('n', '<leader>ay', ':%y<CR>', options) -- Yank the whole buffer
map('n', 'Y', 'y$', options)
map('n', 'vv', 'v$', options)

-- Keep searches centered
map('n', 'n', 'nzzzv', options)
map('n', 'N', 'Nzzzv', options)
map('n', 'J', 'mmJ`m', options)

-- Undo break points
map('i', '.', '.<C-g>u', options)
map('i', '?', '?<C-g>u', options)
map('i', ',', ',<C-g>u', options)
map('i', '!', '!<C-g>u', options)

-- Rerun last run command
map('n', '<leader>q', '@:', options)

-- Copy filepath to clipboard
map('n', '<leader>fp', ':let @+=expand("%:p")<CR>', options)

-- Paste yanked text
map('n', ',p', '"0p', options)
map('n', ',P', '"0P', options)

-- Apply macro across visual selection
map('n', '<leader>mm', ":'<,'>norm! @", options)

-- Split Buffers
map('n', '<leader>-', ':split<CR>', options)
map('n', '<leader>\\', ':vsplit<CR>', options)
map('n', '<leader>x', ':close<CR>', options)

-- Diff windows
map('n', '<leader>d', ':windo diffthis<CR>', options)
map('n', '<leader>dx', ':windo diffoff<CR>', options)

-- File Operation
map('n', '<C-a>', ':w<Space>', options)
map('n', '<C-n>', ':enew<CR>', options)
map('n', '<C-q>', ":%bd|e#<CR>:echom 'Closed all buffer except current!'<CR>", options)
map('n', '<C-w>', ':bw<CR>', options)
map('n', 'gf', ':edit <cfile><CR>', options) -- Opens a file under cursor even if it doesnt exisit.
map('n', 'ss', ':w!<CR>', options)
map('c', ':q', ':qall<CR>', options)

-- Resize vim windows
map('n', '<Up>', ':resize -2<CR>', options)
map('n', '<Down>', ':resize +2<CR>', options)
map('n', '<Left>', ':vertical resize -2<CR>', options)
map('n', '<Right>', ':vertical resize +2<CR>', options)

-- S-k & S-j moves up and down
map('x', 'K', ":move '<-2<CR>gv=gv", options)
map('x', 'J', ":move '>+1<CR>gv=gv", options)

-- Reselect visual selection after indenting
map('v', '<', '<gv', options)
map('v', '>', '>gv', options)

-- Disable search highlights
map('n', '<leader>`', ':nohls<CR>', options)

-- Install plugins using paq
map('n', '<leader><leader>p', ':PaqInstall<CR>', options)

-- Shortcuts to open common files
map('n', '<leader><leader>hs', ':e /etc/hosts<CR>', options)
map('n', '<leader><leader>la', ':e ~/.aliases<CR>', options)
map('n', '<leader><leader>n', ':e ~/notes/todos.md<CR>', options)
map('n', '<leader><leader>rc', ':e ~/.config/nvim/init.lua<CR>', options)
map('n', '<leader><leader>tc', ':e ~/.tmux.conf<CR>', options)
map('n', '<leader><leader>ya', ':e /Users/gumamahe/Documents/Cwebaddons.local/docker-compose.yml<CR>', options)

-- Reload current buffer
map('n', '<leader><leader>5', ':e!<CR>', options)

-- Close preview buffer
map('n', '<ESC><leader>', ':pc<CR>', options)

-- Toggles
map('n', '<leader>tn', ':set nu!<CR>', options)
map('n', '<leader>trn', ':set rnu!<CR>', options)
map('n', '<leader>tc', ':set cursorline!<CR>', options)
map('n', '<leader>tl', ':Limelight!!<CR>', options)
map('n', '<leader>ts', ':set spell! spelllang=en_us<CR>', options)

-- Format json
map('n', '<leader><leader>j', ':%!python -m json.tool<CR>', options)

-- Copvy visual select to system clipboard
map('v', '<C-c>', '"+y', options)

-- Reload init.lua
map('n', '<leader><leader>rf', ":source %<CR>:echom 'current lua reloaded'<CR>", options)
map('n', '<leader><leader>rr', ":source ~/.config/nvim/init.lua<CR>:echom 'NVIM init.lua reloaded'<CR>", options)
