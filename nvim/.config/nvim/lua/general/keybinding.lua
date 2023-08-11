local options = { noremap = true }

vim.keymap.set('n', '<Space>', '', {})
vim.g.mapleader = ' '  -- 'vim.g' sets global variables

vim.keymap.set('n', ';', ':', {})
vim.keymap.set('v', ';', ':', {})

-- Nifty mappings
options.desc = "select entire buffer"
vim.keymap.set('n', '<leader>aa', 'GVgg', options) -- Select the entire buffer
options.desc = "copy/yank entire buffer"
vim.keymap.set('n', '<leader>ay', ':%y<CR>', options) -- Yank the whole buffer
options.desc = "copy/yank to end of line"
vim.keymap.set('n', 'Y', 'y$', options)
options.desc = "visual select to end of line"
vim.keymap.set('n', 'vv', 'v$', options)

-- Keep searches centered
options.desc = "search next and keep it result centered"
vim.keymap.set('n', 'n', 'nzzzv', options)
options.desc = "search previous and keep it result centered"
vim.keymap.set('n', 'N', 'Nzzzv', options)
options.desc = "move down and keep the line centered"
vim.keymap.set('n', 'J', 'mmJ`m', options)

-- Undo break points
options.desc = ""
vim.keymap.set('i', '.', '.<C-g>u', options)
vim.keymap.set('i', '?', '?<C-g>u', options)
vim.keymap.set('i', ',', ',<C-g>u', options)
vim.keymap.set('i', '!', '!<C-g>u', options)

-- Rerun last run command
options.desc = "run last executed vim command"
vim.keymap.set('n', '<leader>lc', '@:', options)

-- Copy filepath to clipboard
options.desc = "copy current file path to register"
vim.keymap.set('n', '<leader>fp', ':let @+=expand("%:p")<CR>', options)

-- Prevent override of paste
options.desc = "prevent registry corruption overrides when pasting"
vim.keymap.set("x", "<leader>p", "\"_dP")

-- Copy visual select text to system clipboard
options.desc = "copy to system to clipboard"
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- Paste yanked text
options.desc = "Always paste yanked text"
vim.keymap.set('n', ',p', '"0p', options)
vim.keymap.set('n', ',P', '"0P', options)

-- Apply macro across visual selection
options.desc = "Apply macro across visual selection"
vim.keymap.set('n', '<leader>mm', ":'<,'>norm! @", options)

-- Split Buffers
options.desc = ""
vim.keymap.set('n', '<leader>-', ':split<CR>', options)
vim.keymap.set('n', '<leader>\\', ':vsplit<CR>', options)
options.desc = "close split buffers"
vim.keymap.set('n', '<leader>x', ':close<CR>', options)
options.desc = "Open quickfix split"
vim.keymap.set('n', '<leader>qf', ':copen<CR>', options)

-- Add executable persmission to current file
options.desc = "Change/Make current file as executable"
vim.keymap.set('n', '<leader><leader>x', ':!chmod +x %<CR>', options)

-- Diff windows
options.desc = "diff two files"
vim.keymap.set('n', '<leader>dd', ':windo diffthis<CR>', options)
options.desc = "close diff between two files"
vim.keymap.set('n', '<leader>dx', ':windo diffoff<CR>', options)

-- File Operation
options.desc = ""
vim.keymap.set('n', '<C-a>', ':w<Space>', options)
vim.keymap.set('n', '<C-n>', ':enew<CR>', options)
options.desc = "close all buffers except current"
vim.keymap.set('n', '<C-q>', ':%bd|e#|bd#<CR>:echom \'closed all buffers\'<CR>', options)
options.desc = ""
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

-- Packer plugins using packer
options.desc = "sync packer installation"
vim.keymap.set('n', '<leader><leader>p', ':PackerSync<CR>', options)
options.desc = ""

-- Shortcuts to open common files
vim.keymap.set('n', '<leader><leader>hs', ':e /etc/hosts<CR>', options)

-- Reload current buffer
vim.keymap.set('n', '<leader><leader>5', ':e!<CR>', options)

-- Close preview buffer
options.desc = "close preview window"
vim.keymap.set('n', '<ESC><leader>', ':pc<CR>', options)
options.desc = ""

-- Toggles
options.desc = "[T]oggle [N]umbers"
vim.keymap.set('n', '<leader>tn', ':set nu!<CR>', options)
options.desc = "[T]oggle [R]everse [N]umbers"
vim.keymap.set('n', '<leader>trn', ':set rnu!<CR>', options)
options.desc = "[T]oggle [C]ursorLine"
vim.keymap.set('n', '<leader>tc', ':set cursorline!<CR>', options)
options.desc = "[T]oggle [L]imelight"
vim.keymap.set('n', '<leader>tl', ':Limelight!!<CR>', options)
options.desc = "[T]oggle [S]pellcheck"
vim.keymap.set('n', '<leader>ts', ':set spell! spelllang=en_us<CR>', options)

-- Format json
options.desc = "Format selected test as [J]son"
vim.keymap.set('n', '<leader><leader>j', ':%!python -m json.tool<CR>', options)

-- Reload init.lua
options.desc = "[R]eload current [F]ile"
vim.keymap.set('n', '<leader><leader>rf', ":source %<CR>:echom 'current lua file reloaded'<CR>", options)
options.desc = "[R]eload vim enti[r]ely"
vim.keymap.set('n', '<leader><leader>rr', ":source ~/.config/nvim/init.lua<CR>:echom 'NVIM init.lua reloaded'<CR>", options)
options.desc = ""
