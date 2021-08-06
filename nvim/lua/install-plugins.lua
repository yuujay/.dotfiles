require "paq-nvim" {
  'phaazon/hop.nvim', -- EASYMOTION IN LUA #TOP5
  'glepnir/lspsaga.nvim',
  'hrsh7th/nvim-compe',
  'kyazdani42/nvim-web-devicons',
  'mhartington/formatter.nvim',
  'neovim/nvim-lspconfig',
  'savq/paq-nvim',
  'scrooloose/nerdtree',
  'nvim-treesitter/nvim-treesitter',
  'hoob3rt/lualine.nvim', -- POWERLINE WRITTEN IN LUA #TOP10 vs GalaxyLine
  'nvim-lua/plenary.nvim',
  'lewis6991/gitsigns.nvim',
  -- "hrsh7th/vim-vsnip",
  -- "jiangmiao/auto-pairs",
  -- "alvan/vim-closetag",
  -- "b3nj5m1n/kommentary",
  -- "nvim-lua/popup.nvim",
  -- "nvim-telescope/telescope.nvim", TO-CONSIDER #TOP5
  -- "nvim-treesitter/nvim-treesitter",
  -- "onsails/lspkind-nvim",
  -- "rmagatti/auto-session",
  -- "sainnhe/everforest",
  -- "tpope/vim-repeat",
  -- "tpope/vim-surround",
  -- "wellle/targets.vim",
  -- "wfxr/min"
  -- 'kyazdani42/nvim-tree.lua',
}


require'hop'.setup()
require('lualine').setup()
require('gitsigns').setup()
