-- INSTRUCTIONS:
-- You NEED to source this file for any updates before running :Paq*
require "paq-nvim" {

    'glepnir/lspsaga.nvim',
    'hrsh7th/nvim-compe',
    'junegunn/fzf',
    'junegunn/fzf.vim',
    'mhartington/formatter.nvim',
    'neovim/nvim-lspconfig',
    'nvim-treesitter/nvim-treesitter',
    'phaazon/hop.nvim', -- EASYMOTION IN LUA #TOP5
    'savq/paq-nvim', -- lightweight package manager

    'airblade/vim-gitgutter',
    'christoomey/vim-sort-motion',
    'christoomey/vim-tmux-navigator',
    'christoomey/vim-tmux-runner',
    'jiangmiao/auto-pairs',
    'scrooloose/nerdtree',
    'tpope/vim-commentary',
    'tpope/vim-endwise',
    'tpope/vim-fugitive',
    'tpope/vim-rails',
    'tpope/vim-surround',

-- https://github.com/itchyny/lightline.vim TODO: Check this out over airline
-- https://github.com/maximbaz/lightline-ale - TODO: If ale is used, can provide status

-- Status lines and fonts used in the statusline.
    'powerline/fonts',
    'vim-airline/vim-airline',
    'ryanoasis/vim-devicons',  -- This needs to be at the end since we devicons need to loaded after all plugins

  -- "hrsh7th/vim-vsnip",
  -- "b3nj5m1n/kommentary",
  -- "onsails/lspkind-nvim",
  -- "wellle/targets.vim",
  -- 'https://github.com/junegunn/limelight.vim'
  -- "alvan/vim-closetag",
  -- "rmagatti/auto-session",
  -- 'lukas-reineke/indent-blankline.nvim',
  -- 'https://github.com/Yggdroot/indentLine.git'
  -- 'kyazdani42/nvim-tree.lua',
  -- 'hoob3rt/lualine.nvim', -- POWERLINE WRITTEN IN LUA #TOP10 vs GalaxyLine THIS SLOWS DOWN NVIM open and saving

-- Tried these plugins below, not suitable for current workflows
-- Telescope related
    -- 'nvim-lua/popup.nvim',
    -- 'nvim-lua/plenary.nvim',
    -- 'nvim-telescope/telescope.nvim',
}


require'hop'.setup()
