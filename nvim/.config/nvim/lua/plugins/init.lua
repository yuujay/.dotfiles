return {
  {'nvim-treesitter/nvim-treesitter', build = ':TSUpdate'},

  -- LSP Support
  {
    'neovim/nvim-lspconfig',
    dependencies = {
      'williamboman/mason.nvim', -- makes it easy to install LSP,DAP,Linter
      'williamboman/mason-lspconfig.nvim', -- fuses mason and nvim-lspconfig
    },
  },

  -- Autocompletion
  {
    'hrsh7th/nvim-cmp',
    dependencies = {
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-nvim-lua',

      -- Snippets
      'L3MON4D3/LuaSnip',
      'rafamadriz/friendly-snippets',
      'saadparwaiz1/cmp_luasnip',
    },
  },

  -- Debugging/DAP
  {
    "mfussenegger/nvim-dap",
    dependencies = {
      "leoluz/nvim-dap-go",
      "rcarriga/nvim-dap-ui",
      "theHamsta/nvim-dap-virtual-text",
      "nvim-neotest/nvim-nio",
      "williamboman/mason.nvim",
      'nvim-telescope/telescope-dap.nvim',
    },
  },

  'towolf/vim-helm',

  -- Movements,
  'junegunn/fzf',
  'christoomey/vim-sort-motion',
  'christoomey/vim-tmux-navigator',
  'christoomey/vim-tmux-runner',

  -- Telescope related
  'nvim-lua/popup.nvim',
  'nvim-lua/plenary.nvim',
  'nvim-telescope/telescope.nvim',
  {'nvim-telescope/telescope-fzf-native.nvim', build = 'make'}, -- Required to make use of fzf for searching in telescope.

  -- Grammer
  'jiangmiao/auto-pairs',
  'tpope/vim-commentary',
  'tpope/vim-endwise',
  'tpope/vim-surround',
  'michaeljsmith/vim-indent-object',

  -- 'ThePrimeagen/harpoon'
  -- 'chipsenkbeil/distant.nvim' -- NIFTY_ONE - Remote development from vim
}
