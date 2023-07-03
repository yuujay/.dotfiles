local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- NOTE: Set leader here as Lazy requires it to be here
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

require('lazy').setup({
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
    'phaazon/hop.nvim', -- EASYMOTION IN LUA #TOP5
    'christoomey/vim-sort-motion',
    'christoomey/vim-tmux-navigator',
    'christoomey/vim-tmux-runner',
    -- 'scrooloose/nerdtree',

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
    'akinsho/bufferline.nvim',
    'kyazdani42/nvim-web-devicons',
    'onsails/lspkind-nvim',
    -- 'projekt0n/github-nvim-theme',
    'junegunn/limelight.vim',
    -- 'tjdevries/colorbuddy.nvim', -- Not-mandatory used in autocomplete floating menu bar

    -- Status lines and fonts used in the statusline.
    'powerline/fonts',
    'vim-airline/vim-airline',
    'ryanoasis/vim-devicons',  -- This needs to be at the end since we devicons need to loaded after all plugins

    -- Markdown preview
    'ellisonleao/glow.nvim',

    -- Nvim clients outside of terminal
    {'glacambre/firenvim', build='firenvim#install(1)'},

    -- "alvan/vim-closetag",
    -- "b3nj5m1n/kommentary",
    -- "rmagatti/auto-session",
    -- "wellle/targets.vim",
    -- 'https://github.com/Yggdroot/indentLine.git'
    -- 'kyazdani42/nvim-tree.lua',
    -- 'WaylonWalker/Telegraph.nvim', -- Check if this is better than vim-tmux-runner.
    -- 'lukas-reineke/indent-blankline.nvim',
    -- https://github.com/itchyny/lightline.vim TODO: Check this out over airline

    -- TODO:
    -- Try these set of plugins next. Finer configurations
    -- 'tpope/vim-projectionist' -- Too cool to configure and have it working.
    -- 'vim-test/vim-test'
    -- 'ThePrimeagen/harpoon'
    -- 'code-biscuits/nvim-biscuits'
    -- 'chipsenkbeil/distant.nvim' -- NIFTY_ONE - Remote development from vim

    -- OLDER PLUGINS
    -- 'junegunn/fzf.vim', --Using telescope instead of this.
    -- 'voldikss/vim-floaterm' -- Not particularly useful if vim is used within tmux
    -- 'mhartington/formatter.nvim', -- Not sure if this is required.
})

-- After plugin install configs
require('plugins.plugin-after')

require('plugins.plugin-config')
require('plugins.lsp')
