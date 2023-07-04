local options = { noremap = true }

-- Bufferline
-- vim.keymap.set('n', '<leader>l', ':BufferLineCycleNext<CR>', options)
-- vim.keymap.set('n', '<leader>h', ':BufferLineCyclePrev<CR>', options)

-- Not required as this is is provided by vim-tmux navigator
-- vim.keymap.set('n', '<leader>L', ':BufferLineMoveNext<CR>', options)
-- vim.keymap.set('n', '<leader>H', ':BufferLineMovePrev<CR>', options)

-- Vim Fuguitive
options.desc = "Enter fuguitive [g]it and wait for user input"
vim.keymap.set('n', '<leader><leader>g', ':Git ', options)
options.desc = "Launch fuguitive [g]it"
vim.keymap.set('n', '<leader>g', ':Git<CR>', options)
options.desc = "fugutive [g]it [c]ommit"
vim.keymap.set('n', '<leader>gc', ':Git commit<CR>', options)
options.desc = "fugutive [g]it [p]ush"
vim.keymap.set('n', '<leader>gp', ':Git push<CR>', options)
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
