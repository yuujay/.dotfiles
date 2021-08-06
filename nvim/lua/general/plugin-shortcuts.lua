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

-- Telescope

map('n', '<leader>/', ':Telescope current_buffer_fuzzy_find<CR>', options)
map('n', '<leader>c', ':Telescope git_bcommits<CR>', options)
map('n', '<leader>p', ':Telescope find_files<CR>', options)
map('n', '<leader>f', ':Telescope live_grep<CR>', options)
map('n', '<leader>b', ':Telescope buffers<CR>', options)
map('n', '<leader>t', ':Telescope ', options)

