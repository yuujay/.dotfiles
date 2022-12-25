-- Based of https://github.com/nvim-lua/kickstart.nvim

local install_path = vim.fn.stdpath 'data' .. '/site/pack/packer/start/packer.nvim'
local is_bootstrap = false
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
    is_bootstrap = true
    vim.fn.system { 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path }
    vim.cmd [[packadd packer.nvim]]
end

require('packer').startup(function(use)
    -- Package manager
    use 'wbthomason/packer.nvim'

    use {
        'VonHeikemen/lsp-zero.nvim',
        requires = {
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
    }

    -- Movements
    use 'junegunn/fzf'
    use 'phaazon/hop.nvim' -- EASYMOTION IN LUA #TOP5
    use 'christoomey/vim-sort-motion'
    use 'christoomey/vim-tmux-navigator'
    use 'christoomey/vim-tmux-runner'
    use 'scrooloose/nerdtree'

    -- Telescope related
    use 'nvim-lua/popup.nvim'
    use 'nvim-lua/plenary.nvim'
    use 'nvim-telescope/telescope.nvim'
    use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make'} -- Required to make use of fzf for searching in telescope.

    -- Grammer
    use 'jiangmiao/auto-pairs'
    use 'tpope/vim-commentary'
    use 'tpope/vim-endwise'
    use 'tpope/vim-fugitive'
    use 'tpope/vim-rhubarb' -- Required to make opening repositories on the browser easier when required.
    use 'tpope/vim-surround'
    use 'michaeljsmith/vim-indent-object'

    -- Cosmetics
    use 'airblade/vim-gitgutter'
    use 'akinsho/bufferline.nvim'
    use 'kyazdani42/nvim-web-devicons'
    use 'onsails/lspkind-nvim'
    use 'projekt0n/github-nvim-theme'
    use 'junegunn/limelight.vim'
    -- use 'tjdevries/colorbuddy.nvim' -- Not-mandatory used in autocomplete floating menu bar


    -- Status lines and fonts used in the statusline.
    use 'powerline/fonts'
    use 'vim-airline/vim-airline'
    use 'ryanoasis/vim-devicons'  -- This needs to be at the end since we devicons need to loaded after all plugins

    -- Markdown preview
    use 'ellisonleao/glow.nvim'

    -- Nvim clients outside of terminal
    use {'glacambre/firenvim', run='firenvim#install(1)'}

    -- For Obsidian
    use 'epwalsh/obsidian.nvim'

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


    -- Add custom plugins to packer from ~/.config/nvim/lua/custom/plugins.lua
    local has_plugins, plugins = pcall(require, 'custom.plugins')
    if has_plugins then
        plugins(use)
    end

    if is_bootstrap then
        require('packer').sync()
    end
end)

-- After plugin install configs
require('plugins.plugin-after')
