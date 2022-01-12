-- INSTRUCTIONS:
-- You NEED to source this file for any updates before running :Paq*

require "paq" {
    'savq/paq-nvim', -- lightweight package manager

    -- intellisense
    'hrsh7th/nvim-compe', -- TODO: Replace by nvim-cmp
    'neovim/nvim-lspconfig',
    -- 'williamboman/nvim-lsp-installer',
    -- 'glepnir/lspsaga.nvim',
    -- 'hrsh7th/nvim-cmp',

    'junegunn/fzf',
    'junegunn/fzf.vim',
    'nvim-treesitter/nvim-treesitter',

    'phaazon/hop.nvim', -- EASYMOTION IN LUA #TOP5
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
  -- 'https://github.com/junegunn/limelight.vim'

    -- Cosmetic configs
    'airblade/vim-gitgutter',
    'projekt0n/github-nvim-theme',
    'akinsho/bufferline.nvim',
    'kyazdani42/nvim-web-devicons',

-- https://github.com/itchyny/lightline.vim TODO: Check this out over airline
-- https://github.com/maximbaz/lightline-ale - TODO: If ale is used, can provide status

-- Status lines and fonts used in the statusline.
    'powerline/fonts',
    'vim-airline/vim-airline',
    'ryanoasis/vim-devicons',  -- This needs to be at the end since we devicons need to loaded after all plugins

  -- "alvan/vim-closetag",
  -- "b3nj5m1n/kommentary",
  -- "hrsh7th/vim-vsnip",
  -- "onsails/lspkind-nvim",
  -- "rmagatti/auto-session",
  -- "wellle/targets.vim",
  -- 'hoob3rt/lualine.nvim', -- POWERLINE WRITTEN IN LUA #TOP10 vs GalaxyLine THIS SLOWS DOWN NVIM open and saving
  -- 'https://github.com/Yggdroot/indentLine.git'
  -- 'kyazdani42/nvim-tree.lua',
  -- 'lukas-reineke/indent-blankline.nvim',
  -- 'mhartington/formatter.nvim', -- Not sure if this is required.

-- Tried these plugins below, not suitable for current workflows
-- Telescope related
    -- 'nvim-lua/popup.nvim',
    -- 'nvim-lua/plenary.nvim',
    -- 'nvim-telescope/telescope.nvim',
}

require'github-theme'.setup({
  theme_style = "dark_default",
  comment_style = "italic",
  dark_sidebar = true,
})

require'hop'.setup()

