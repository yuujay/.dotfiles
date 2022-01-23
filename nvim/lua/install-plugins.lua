-- INSTRUCTIONS:
-- You NEED to source this file for any updates before running :Paq*

require "paq" {
    'savq/paq-nvim', -- lightweight package manager

    -- Auto-complete
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-path',
    'hrsh7th/nvim-cmp',

    -- Snippets
    'L3MON4D3/LuaSnip',
    'rafamadriz/friendly-snippets',
    'saadparwaiz1/cmp_luasnip',

    -- LSP
    'glepnir/lspsaga.nvim',
    'neovim/nvim-lspconfig',
    'nvim-treesitter/nvim-treesitter',
    'williamboman/nvim-lsp-installer',
    -- 'ray-x/lsp_signature'

    -- Movements
    'junegunn/fzf',
    'junegunn/fzf.vim',
    'phaazon/hop.nvim', -- EASYMOTION IN LUA #TOP5
    'christoomey/vim-sort-motion',
    'christoomey/vim-tmux-navigator',
    'christoomey/vim-tmux-runner',
    'scrooloose/nerdtree',

    -- Grammer
    'jiangmiao/auto-pairs',
    'tpope/vim-commentary',
    'tpope/vim-endwise',
    'tpope/vim-fugitive',
    'tpope/vim-rails', -- CHECK IF THIS IS USED?
    'tpope/vim-surround',

    -- Cosmetics
    'airblade/vim-gitgutter',
    'akinsho/bufferline.nvim',
    'kyazdani42/nvim-web-devicons',
    'onsails/lspkind-nvim',
    'projekt0n/github-nvim-theme',
    -- 'tjdevries/colorbuddy.nvim', -- Not-mandatory used in autocomplete floating menu bar

    -- Status lines and fonts used in the statusline.
    'powerline/fonts',
    'vim-airline/vim-airline',
    'ryanoasis/vim-devicons',  -- This needs to be at the end since we devicons need to loaded after all plugins

    'ellisonleao/glow.nvim',

    -- https://github.com/itchyny/lightline.vim TODO: Check this out over airline
    -- https://github.com/maximbaz/lightline-ale - TODO: If ale is used, can provide status
    -- "alvan/vim-closetag",
    -- "b3nj5m1n/kommentary",
    -- "hrsh7th/vim-vsnip",
    -- "onsails/lspkind-nvim",
    -- "rmagatti/auto-session",
    -- "wellle/targets.vim",
    -- 'https://github.com/junegunn/limelight.vim'
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

require('github-theme').setup({
  theme_style = "dark_default",
  comment_style = "italic",
  dark_sidebar = true,
})

require('hop').setup()

