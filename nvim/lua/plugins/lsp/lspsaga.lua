-- Currently this is not required from `lsp.init` since this plugin is brokens
local map = vim.api.nvim_set_keymap
options = { noremap = true }

local saga = require('lspsaga')
saga.init_lsp_saga {}

-- Keybindings
map('n', '<leader>ca', ':Lspsaga code_action<CR>', options)
map('n', '<leader>cc', ':<C-U>Lspsaga show_cursor_diagnostics<CR>', options)
map('n', '<leader>cd', ':Lspsaga hover_doc<CR>', options)
map('n', '<leader>cf', ':Lspsaga lsp_finder<CR>', options)
map('n', '<leader>cj', ':Lspsaga diagnostic_jump_next<CR>', options)
map('n', '<leader>ck', ':Lspsaga diagnostic_jump_prev<CR>', options)
map('n', '<leader>cl', ':<C-U>Lspsaga show_line_diagnostics<CR>', options)
map('n', '<leader>cp', ':Lspsaga preview_definition<CR>', options)
map('n', '<leader>cr', ':Lspsaga rename<CR>', options)
map('n', '<leader>cs', ':Lspsaga signature_help<CR>', options)
map('n', 'K', ':Lspsaga hover_doc<CR>', options)
map('v', '<leader>ca', ':<C-U>Lspsaga code_action<CR>', options)

