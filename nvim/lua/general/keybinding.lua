local options = { noremap = true }

vim.keymap.set('n', '<Space>', '', {})
vim.g.mapleader = ' '  -- 'vim.g' sets global variables

vim.keymap.set('n', ';', ':', {})
vim.keymap.set('v', ';', ':', {})

-- Move among buffers
vim.keymap.set('n', '<leader>ll', ':bnext<CR>', options)
vim.keymap.set('n', '<leader>hh', ':bprev<CR>', options)

-- Nifty mappings
vim.keymap.set('n', '<leader>aa', 'GVgg', options) -- Select the entire buffer
vim.keymap.set('n', '<leader>ay', ':%y<CR>', options) -- Yank the whole buffer
vim.keymap.set('n', 'Y', 'y$', options)
vim.keymap.set('n', 'vv', 'v$', options)

-- Keep searches centered
vim.keymap.set('n', 'n', 'nzzzv', options)
vim.keymap.set('n', 'N', 'Nzzzv', options)
vim.keymap.set('n', 'J', 'mmJ`m', options)

-- Undo break points
vim.keymap.set('i', '.', '.<C-g>u', options)
vim.keymap.set('i', '?', '?<C-g>u', options)
vim.keymap.set('i', ',', ',<C-g>u', options)
vim.keymap.set('i', '!', '!<C-g>u', options)

-- Rerun last run command
vim.keymap.set('n', '<leader>q', '@:', options)

-- Copy filepath to clipboard
vim.keymap.set('n', '<leader>fp', ':let @+=expand("%:p")<CR>', options)

-- Prevent override of paste
vim.keymap.set("x", "<leader>p", "\"_dP")

-- Copy visual select text to system clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- Paste yanked text
vim.keymap.set('n', ',p', '"0p', options)
vim.keymap.set('n', ',P', '"0P', options)

-- Apply macro across visual selection
vim.keymap.set('n', '<leader>mm', ":'<,'>norm! @", options)

-- Split Buffers
vim.keymap.set('n', '<leader>-', ':split<CR>', options)
vim.keymap.set('n', '<leader>\\', ':vsplit<CR>', options)
vim.keymap.set('n', '<leader>x', ':close<CR>', options)

-- Diff windows
vim.keymap.set('n', '<leader>d', ':windo diffthis<CR>', options)
vim.keymap.set('n', '<leader>dx', ':windo diffoff<CR>', options)

-- File Operation
vim.keymap.set('n', '<C-a>', ':w<Space>', options)
vim.keymap.set('n', '<C-n>', ':enew<CR>', options)
vim.keymap.set('n', '<C-q>', ':%bd|e#|bd#<CR>:echom \'closed all buffers\'<CR>', options)
vim.keymap.set('n', '<C-w>', ':bw<CR>', options)
vim.keymap.set('n', 'gf', ':edit <cfile><CR>', options) -- Opens a file under cursor even if it doesnt exisit.
vim.keymap.set('n', 'ss', ':w!<CR>', options)
vim.keymap.set('c', ':q', ':qall<CR>', options)

-- Resize vim windows
vim.keymap.set('n', '<Up>', ':resize -2<CR>', options)
vim.keymap.set('n', '<Down>', ':resize +2<CR>', options)
vim.keymap.set('n', '<Left>', ':vertical resize -2<CR>', options)
vim.keymap.set('n', '<Right>', ':vertical resize +2<CR>', options)

-- S-k & S-j moves up and down
vim.keymap.set('x', 'K', ":move '<-2<CR>gv=gv", options)
vim.keymap.set('x', 'J', ":move '>+1<CR>gv=gv", options)

-- Reselect visual selection after indenting
vim.keymap.set('v', '<', '<gv', options)
vim.keymap.set('v', '>', '>gv', options)

-- Disable search highlights
vim.keymap.set('n', '<leader>`', ':nohls<CR>', options)

-- Install plugins using paq
vim.keymap.set('n', '<leader><leader>p', ':PaqInstall<CR>', options)

-- Shortcuts to open common files
vim.keymap.set('n', '<leader><leader>hs', ':e /etc/hosts<CR>', options)
vim.keymap.set('n', '<leader><leader>ya', ':e /Users/gumamahe/Documents/Cwebaddons.local/docker-compose.yml<CR>', options)

-- Reload current buffer
vim.keymap.set('n', '<leader><leader>5', ':e!<CR>', options)

-- Close preview buffer
vim.keymap.set('n', '<ESC><leader>', ':pc<CR>', options)

-- Toggles
vim.keymap.set('n', '<leader>tn', ':set nu!<CR>', options)
vim.keymap.set('n', '<leader>trn', ':set rnu!<CR>', options)
vim.keymap.set('n', '<leader>tc', ':set cursorline!<CR>', options)
vim.keymap.set('n', '<leader>tl', ':Limelight!!<CR>', options)
vim.keymap.set('n', '<leader>ts', ':set spell! spelllang=en_us<CR>', options)

-- Format json
vim.keymap.set('n', '<leader><leader>j', ':%!python -m json.tool<CR>', options)

-- Reload init.lua
vim.keymap.set('n', '<leader><leader>rf', ":source %<CR>:echom 'current lua reloaded'<CR>", options)
vim.keymap.set('n', '<leader><leader>rr', ":source ~/.config/nvim/init.lua<CR>:echom 'NVIM init.lua reloaded'<CR>", options)
