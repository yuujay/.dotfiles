return {
  {'nvim-treesitter/nvim-treesitter', build = ':TSUpdate'},
  -- Debugging/DAP
  'mfussenegger/nvim-dap',
  'nvim-telescope/telescope-dap.nvim',
  'rcarriga/nvim-dap-ui',
  'leoluz/nvim-dap-go',
  'theHamsta/nvim-dap-virtual-text',

  -- One simple LSP Config to rule em all
  {
    'VonHeikemen/lsp-zero.nvim',
    dependencies = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},
      {'williamboman/mason.nvim'},
      {'williamboman/mason-lspconfig.nvim'},

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},
      {'hrsh7th/cmp-buffer'},
      {'hrsh7th/cmp-path'},
      {'saadparwaiz1/cmp_luasnip'},
      {'hrsh7th/cmp-nvim-lsp'},
      {'hrsh7th/cmp-nvim-lua'},

      -- Snippets
      {'L3MON4D3/LuaSnip'},
      {'rafamadriz/friendly-snippets'},
      {'saadparwaiz1/cmp_luasnip'},
    }
  },

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
  'tpope/vim-fugitive',
  'tpope/vim-rhubarb', -- Required to make opening repositories on the browser easier when required.
  'tpope/vim-surround',
  'michaeljsmith/vim-indent-object',

  -- Cosmetics
  'airblade/vim-gitgutter',
  -- 'akinsho/bufferline.nvim',
  -- 'kyazdani42/nvim-web-devicons',

  -- Status lines and fonts used in the statusline.
  'powerline/fonts',
  'vim-airline/vim-airline',
  'ryanoasis/vim-devicons',  -- This needs to be at the end since we devicons need to loaded after all plugins

  -- Markdown preview
  'ellisonleao/glow.nvim',

  -- 'ThePrimeagen/harpoon'
  -- 'chipsenkbeil/distant.nvim' -- NIFTY_ONE - Remote development from vim
}
