local options = { noremap = true }

-- Bufferline
-- vim.keymap.set('n', '<leader>l', ':BufferLineCycleNext<CR>', options)
-- vim.keymap.set('n', '<leader>h', ':BufferLineCyclePrev<CR>', options)

-- Not required as this is is provided by vim-tmux navigator
-- vim.keymap.set('n', '<leader>L', ':BufferLineMoveNext<CR>', options)
-- vim.keymap.set('n', '<leader>H', ':BufferLineMovePrev<CR>', options)

-- Hop shortcuts
vim.keymap.set('n', '<leader><leader>s', ':HopWord<CR>', options)
vim.keymap.set('n', '<leader><leader>l', ':HopLine<CR>', options)
vim.keymap.set('n', '<leader><leader>/', ':HopPattern<CR>', options)

-- Nvim Tree
vim.keymap.set('n', '<leader>n', ':NERDTreeToggle<CR>', options)
vim.keymap.set('n', '<leader>nf', ':NERDTreeFind<CR>', options)

-- Vim Fuguitive
vim.keymap.set('n', '<leader><leader>g', ':Git ', options)
vim.keymap.set('n', '<leader>g', ':Git<CR>', options)
vim.keymap.set('n', '<leader>gc', ':Git commit<CR>', options)
vim.keymap.set('n', '<leader>gh', ':GitGutterPreviewHunk<CR>', options)
vim.keymap.set('n', '<leader>gj', ':GitGutterNextHunk<CR>', options)
vim.keymap.set('n', '<leader>gk', ':GitGutterPrevHunk<CR>', options)
vim.keymap.set('n', '<leader>gp', ':Git push<CR>', options)
vim.keymap.set('n', '<leader>gs', ':GitGutterStageHunk<CR>', options)
vim.keymap.set('n', '<leader>gu', ':GitGutterUndoHunk<CR>', options)

-- TMUX Runner
vim.keymap.set('n', '<leader>vc', ':VtrSendCtrlC<CR>', options)
vim.keymap.set('n', '<leader>vcmd', ':VtrSendCommandToRunner<CR>', options)
vim.keymap.set('n', '<leader>vk', ':VtrClearRunner<CR>', options)
vim.keymap.set('n', '<leader>vl', ':VtrSendLinesToRunner!<CR>', options)
vim.keymap.set('n', '<leader>vz', ':VtrFocusRunner<CR>', options)
vim.keymap.set('n', '<leader>vr', ':VtrAttachToPane<CR>', options) -- Use this incase `VtrOpenRunner` doesn't work properly with neovim
vim.keymap.set('n', '<leader>vo', ':VtrOpenRunner<CR>', options)

-- FZF configs
-- vim.keymap.set('n', '<leader>/', ':BLines<CR>', options)
-- vim.keymap.set('n', '<leader>c', ':BCommits<CR>', options)
-- vim.keymap.set('n', '<leader>p', ':Files<CR>', options)
-- vim.keymap.set('n', '<leader>f', ':Ag ', options)
-- vim.keymap.set('n', '<leader>b', ':Buffers<CR>', options)
