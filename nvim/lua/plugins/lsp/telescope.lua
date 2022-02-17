local map = vim.api.nvim_set_keymap
local options = { noremap = true }

require('telescope').setup{
  defaults = {
    -- Default configuration for telescope goes here:
    -- config_key = value,
    mappings = {
      i = {
        -- map actions.which_key to <C-h> (default: <C-/>)
        -- actions.which_key shows the mappings for your picker,
        -- e.g. git_{create, delete, ...}_branch for the git_branches picker
        ["<C-h>"] = "which_key",
        ["<C-j>"] = "move_selection_next",
        ["<C-k>"] = "move_selection_previous",
      }
    }
  },
  pickers = {
    -- Default configuration for builtin pickers goes here:
    -- picker_name = {
    --   picker_config_key = value,
    --   ...
    -- }
    -- Now the picker_config_key will be applied every time you call this
    -- builtin picker
  },
  extensions = {
    -- Your extension configuration goes here:
    -- extension_name = {
    --   extension_config_key = value,
    -- }
    -- please take a look at the readme of the extension you want to configure
  }
}

require('telescope').load_extension('fzf')

-- LSP Keybindings
map('n', '<leader>ca', ':Telescope lsp_code_action<CR>', options)
map('n', '<leader>cd', ':Telescope lsp_definitions<CR>', options)
map('n', '<leader>cf', ':Telescope lsp_references<CR>', options)

-- Generic Keybindings
map('n', '<leader>/', ':Telescope current_buffer_fuzzy_find theme=dropdown<CR>', options)
map('n', '<leader><C-p>', ':Telescope fd theme=dropdown<CR>', options)
map('n', '<leader><leader>T', ':Telescope resume<CR>', options)
map('n', '<leader><leader>t', ':Telescope ', options)
map('n', '<leader>b', ':Telescope buffers theme=dropdown<CR>', options)
map('n', '<leader>c', ':Telescope git_bcommits<CR>', options)
map('n', '<leader>f', ':Telescope live_grep theme=dropdown<CR>', options)
map('n', '<leader>gbc', ':Telescope git_bcommits<CR>', options)
map('n', '<leader>k', ':Telescope keymaps theme=dropdown<CR>', options)
map('n', '<leader>p', ':Telescope git_files theme=dropdown<CR>', options)
map('n', '<leader>sb', ':Telescope git_branches theme=dropdown<CR>', options)
