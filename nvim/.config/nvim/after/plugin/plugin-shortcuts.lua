local options = { noremap = true }

-- Bufferline
-- vim.keymap.set('n', '<leader>l', ':BufferLineCycleNext<CR>', options)
-- vim.keymap.set('n', '<leader>h', ':BufferLineCyclePrev<CR>', options)

-- Not required as this is is provided by vim-tmux navigator
-- vim.keymap.set('n', '<leader>L', ':BufferLineMoveNext<CR>', options)
-- vim.keymap.set('n', '<leader>H', ':BufferLineMovePrev<CR>', options)

-- Hop shortcuts
options.desc = "[S]earch for word using hop"
vim.keymap.set('n', '<leader><leader>s', ':HopWord<CR>', options)
options.desc = "Search for [L]ine using hop"
vim.keymap.set('n', '<leader><leader>l', ':HopLine<CR>', options)
options.desc = "Search for pattern using hop"
vim.keymap.set('n', '<leader><leader>/', ':HopPattern<CR>', options)

-- Nvim Tree
options.desc = "[N]erdtree toggle"
vim.keymap.set('n', '<leader>n', ':NERDTreeToggle<CR>', options)
options.desc = "[N]erdTree [F]ind the current file"
vim.keymap.set('n', '<leader>nf', ':NERDTreeFind<CR>', options)

-- Vim Fuguitive
options.desc = "Enter fuguitive [g]it and wait for user input"
vim.keymap.set('n', '<leader><leader>g', ':Git ', options)
options.desc = "Launch fuguitive [g]it"
vim.keymap.set('n', '<leader>g', ':Git<CR>', options)
options.desc = "fugutive [g]it [c]ommit"
vim.keymap.set('n', '<leader>gc', ':Git commit<CR>', options)
options.desc = "fugutive [g]it preview [h]unk"
vim.keymap.set('n', '<leader>gh', ':GitGutterPreviewHunk<CR>', options)
options.desc = "fugutive goto [g]it hunk down - [j]"
vim.keymap.set('n', '<leader>gj', ':GitGutterNextHunk<CR>', options)
options.desc = "fugutive goto [g]it hunk up - [k]"
vim.keymap.set('n', '<leader>gk', ':GitGutterPrevHunk<CR>', options)
options.desc = "fugutive [g]it [p]ush"
vim.keymap.set('n', '<leader>gp', ':Git push<CR>', options)
options.desc = "fugutive [g]it [s]tage current hunk"
vim.keymap.set('n', '<leader>gs', ':GitGutterStageHunk<CR>', options)
options.desc = "fugutive [g]it [u]ndo current hunk"
vim.keymap.set('n', '<leader>gu', ':GitGutterUndoHunk<CR>', options)
options.desc = ""

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
