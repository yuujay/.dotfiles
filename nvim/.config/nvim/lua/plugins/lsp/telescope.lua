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
      live_grep = {
          additional_args = function(opts)
              return {"--hidden"}
          end
      },
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

-- Generic Keybindings
vim.keymap.set('n', '<leader>/', ':Telescope current_buffer_fuzzy_find<CR>', options)
vim.keymap.set('n', '<leader><C-r>', ':Telescope fd<CR>', options)
vim.keymap.set('n', '<leader><leader>T', ':Telescope resume<CR>', options)
vim.keymap.set('n', '<leader><leader>t', ':Telescope ', options)
vim.keymap.set('n', '<leader><leader>b', ':Telescope buffers<CR>', options)
vim.keymap.set('n', '<leader>cc', ':Telescope git_bcommits<CR>', options)
vim.keymap.set('n', '<leader>ff', ':Telescope live_grep<CR>', options)
vim.keymap.set('n', '<leader>gbc', ':Telescope git_bcommits<CR>', options)
vim.keymap.set('n', '<leader>k', ':Telescope keymaps<CR>', options)
vim.keymap.set('n', '<leader>rr', ':Telescope git_files<CR>', options)
vim.keymap.set('n', '<leader>sb', ':Telescope git_branches<CR>', options)
vim.keymap.set('n', '<leader>th', ':Telescope help_tags<CR>', options)
