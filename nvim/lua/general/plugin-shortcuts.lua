local map = vim.api.nvim_set_keymap
options = { noremap = true }

-- Hop shortcuts
map('n', '<leader><leader>s', ':HopWord<CR>', options)
map('n', '<leader><leader>l', ':HopLine<CR>', options)
map('n', '<leader><leader>/', ':HopPattern<CR>', options)

-- Nvim Tree
map('n', '<leader>n', ':NERDTreeToggle<CR>', options)
map('n', '<leader>nf', ':NERDTreeFind<CR>', options)

-- GitSigns

map('n', '<leader>gh', ':Gitsigns preview_hunk<CR>', options)
map('n', '<leader>gs', ':Gitsigns stage_hunk<CR>', options)
map('n', '<leader>gj', ':Gitsigns next_hunk<CR>', options)
map('n', '<leader>gk', ':Gitsigns prev_hunk<CR>', options)
map('n', '<leader>gu', ':Gitsigns reset_hunk<CR>', options)
