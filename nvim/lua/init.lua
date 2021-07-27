-- All the goodness of 0.5 nvim
-- Install paq by using `git clone --depth=1 https://github.com/savq/paq-nvim.git "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/pack/paqs/start/paq-nvim`
set runtimepath+=~/.vim,~/.vim/after
set packpath+=~/.vim
source ~/.vimrc


require "paq-nvim" {
  "glepnir/lspsaga.nvim",
  -- "hoob3rt/lualine.nvim", POWERLINE WRITTEN IN LUA #TOP10 vs GalaxyLine
  "hrsh7th/nvim-compe",
  -- "hrsh7th/vim-vsnip",
  -- "jiangmiao/auto-pairs",
  -- "kyazdani42/nvim-web-devicons",
  -- "lewis6991/gitsigns.nvim",
  "mhartington/formatter.nvim",
  "neovim/nvim-lspconfig",
  "savq/paq-nvim",
  -- "alvan/vim-closetag",
  -- "b3nj5m1n/kommentary",
  -- "nvim-lua/plenary.nvim",
  -- "nvim-lua/popup.nvim",
  -- "nvim-telescope/telescope.nvim", TO-CONSIDER #TOP5
  -- "nvim-treesitter/nvim-treesitter",
  -- "onsails/lspkind-nvim",
  -- "phaazon/hop.nvim", EASYMOTION IN LUA #TOP5
  -- "rmagatti/auto-session",
  -- "sainnhe/everforest",
  -- "tpope/vim-repeat",
  -- "tpope/vim-surround",
  -- "wellle/targets.vim",
  -- "wfxr/min"
}

-- require'lspconfig'.pyright.setup{}

-- require'lspconfig'.solargraph.setup{}

-- Commands:

-- DefaultValues:
--     cmd = { "solargraph", "stdio" }
--     filetypes = { "ruby" }
--     init_options = {
--       formatting = true
--     }
--     root_dir = root_pattern("Gemfile", ".git")
--     settings = {
--       solargraph = {
--         diagnostics = true
--       }
--     }

-- require'lspconfig'.sorbet.setup{}
-- Commands:

-- Default Values:
--     cmd = { "srb", "tc", "--lsp" }
--     filetypes = { "ruby" }
--     root_dir = root_pattern("Gemfile", ".git")

-- -- -------------GOLang---------------------------
-- require'lspconfig'.gopls.setup{}
-- Commands:

-- Default Values:
--     cmd = { "gopls" }
--     filetypes = { "go", "gomod" }
--     root_dir = root_pattern("go.mod", ".git")

-- -- -------------JSON---------------------------
-- require'lspconfig'.jsonls.setup {
--     commands = {
--       Format = {
--         function()
--           vim.lsp.buf.range_formatting({},{0,0},{vim.fn.line("$"),0})
--         end
--       }
--     }
-- }

-- Commands:

-- Default Values:
--     cmd = { "vscode-json-language-server", "--stdio" }
--     filetypes = { "json" }
--     init_options = {
--       provideFormatter = true
--     }
--     root_dir = root_pattern(".git", vim.fn.getcwd())

-- -- ------------- TypeScript -----------------------------
-- require'lspconfig'.tsserver.setup{}
-- Commands:

-- Default Values:
--     cmd = { "typescript-language-server", "--stdio" }
--     filetypes = { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx" }
--     root_dir = root_pattern("package.json", "tsconfig.json", "jsconfig.json", ".git")

-- -- ---------------------------------------------------------------------------

-- require'lspconfig'.java_language_server.setup{}
-- npm i -g vscode-langservers-extracted - FOR HTML
-- npm install -g typescript typescript-language-server
-- gem install sorbet
-- gem install solargraph

-- MORE INFORMATION
-- Additional Comparision of packer vs paq can be found here https://www.reddit.com/r/neovim/comments/k5o1kg/luabased_package_manager/
-- More information here https://github.com/savq/paq-nvim
