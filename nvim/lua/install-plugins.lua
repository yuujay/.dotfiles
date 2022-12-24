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
    -- 'tami5/lspsaga.nvim', WARN: Do not use lspsage since there are some maintainence issues.
    'nvim-treesitter/nvim-treesitter',
    'VonHeikemen/lsp-zero.nvim',
    'neovim/nvim-lspconfig',
    'williamboman/mason.nvim', -- Replaces nvim-lsp-installer
    'williamboman/mason-lspconfig.nvim',
    'jose-elias-alvarez/null-ls.nvim',
    -- 'github/copilot.vim',
    -- 'mfussenegger/nvim-dap', -- Debugger to look into
    -- 'ray-x/lsp_signature'

    -- Movements
    'junegunn/fzf',
    'phaazon/hop.nvim', -- EASYMOTION IN LUA #TOP5
    'christoomey/vim-sort-motion',
    'christoomey/vim-tmux-navigator',
    'christoomey/vim-tmux-runner',
    'scrooloose/nerdtree',
    -- Telescope related
    'nvim-lua/popup.nvim',
    'nvim-lua/plenary.nvim',
    'nvim-telescope/telescope.nvim',
    {'nvim-telescope/telescope-fzf-native.nvim', run = 'make'}, -- Required to make use of fzf for searching in telescope.

    -- Grammer
    'jiangmiao/auto-pairs',
    'tpope/vim-commentary',
    'tpope/vim-endwise',
    'tpope/vim-fugitive',
    'tpope/vim-rhubarb', -- Required to make opening repositories on the browser easier when required.
    'tpope/vim-surround',
    'michaeljsmith/vim-indent-object',

    -- Language specific ones
    'fatih/vim-go',

    -- Cosmetics
    'airblade/vim-gitgutter',
    'akinsho/bufferline.nvim',
    'kyazdani42/nvim-web-devicons',
    'onsails/lspkind-nvim',
    'projekt0n/github-nvim-theme',
    'junegunn/limelight.vim',
    -- 'tjdevries/colorbuddy.nvim', -- Not-mandatory used in autocomplete floating menu bar

    -- Status lines and fonts used in the statusline.
    'powerline/fonts',
    'vim-airline/vim-airline',
    'ryanoasis/vim-devicons',  -- This needs to be at the end since we devicons need to loaded after all plugins

    -- Markdown preview
    'ellisonleao/glow.nvim',

    -- Nvim clients outside of terminal
    {'glacambre/firenvim', run='firenvim#install(1)'},

    'epwalsh/obsidian.nvim',  -- For obsidian

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
}

require('github-theme').setup({
  theme_style = "dark_default",
  comment_style = "italic",
  dark_sidebar = true,
})

require('hop').setup()

-- Most of the config comes from https://github.com/epwalsh/obsidian.nvim
require("obsidian").setup({
  dir = "~/my-vault",
  completion = {
    nvim_cmp = true, -- if using nvim-cmp, otherwise set to false
  }
    -- note_id_func = function(title)
    -- -- Create note IDs in a Zettelkasten format with a timestamp and a suffix.
    -- local suffix = ""
    -- if title ~= nil then
    --   -- If title is given, transform it into valid file name.
    --   suffix = title:gsub(" ", "-"):gsub("[^A-Za-z0-9-]", ""):lower()
    -- else
    --   -- If title is nil, just add 4 random uppercase letters to the suffix.
    --   for _ in 1, 4 do
    --     suffix = suffix .. string.char(math.random(65, 90))
    --   end
    -- end
    -- return tostring(os.time()) .. "-" .. suffix
  -- end
}) 
