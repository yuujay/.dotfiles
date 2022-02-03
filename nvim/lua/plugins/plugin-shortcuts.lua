local map = vim.api.nvim_set_keymap
options = { noremap = true }

-- Bufferline
-- map('n', '<leader>l', ':BufferLineCycleNext<CR>', options)
-- map('n', '<leader>h', ':BufferLineCyclePrev<CR>', options)

-- Not required as this is is provided by vim-tmux navigator
-- map('n', '<leader>L', ':BufferLineMoveNext<CR>', options)
-- map('n', '<leader>H', ':BufferLineMovePrev<CR>', options)

-- Hop shortcuts
map('n', '<leader><leader>s', ':HopWord<CR>', options)
map('n', '<leader><leader>l', ':HopLine<CR>', options)
map('n', '<leader><leader>/', ':HopPattern<CR>', options)

-- Nvim Tree
map('n', '<leader>n', ':NERDTreeToggle<CR>', options)
map('n', '<leader>nf', ':NERDTreeFind<CR>', options)

-- Vim Fuguitive
map('n', '<leader>g', ':Git<CR>', options)
map('n', '<leader>gd', ':Gvdiffsplit<CR>', options)
map('n', '<leader>gh', ':GitGutterPreviewHunk<CR>', options)
map('n', '<leader>gs', ':GitGutterStageHunk<CR>', options)
map('n', '<leader>gj', ':GitGutterNextHunk<CR>', options)
map('n', '<leader>gk', ':GitGutterPrevHunk<CR>', options)
map('n', '<leader>gu', ':GitGutterUndoHunk<CR>', options)

-- TMUX Runner
map('n', '<leader>vc', ':VtrSendCtrlC<CR>', options)
map('n', '<leader>vcmd', ':VtrSendCommandToRunner<CR>', options)
map('n', '<leader>vk', ':VtrClearRunner<CR>', options)
map('n', '<leader>vl', ':VtrSendLinesToRunner!<CR>', options)
map('n', '<leader>vz', ':VtrFocusRunner<CR>', options)
map('n', '<leader>vr', ':VtrAttachToPane<CR>', options) -- Changing this because `VtrOpenRunner` doesn't work properly with neovim

-- FZF configs
-- map('n', '<leader>/', ':BLines<CR>', options)
-- map('n', '<leader>c', ':BCommits<CR>', options)
-- map('n', '<leader>p', ':Files<CR>', options)
-- map('n', '<leader>f', ':Ag ', options)
-- map('n', '<leader>b', ':Buffers<CR>', options)

