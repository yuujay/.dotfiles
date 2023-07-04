-- vim core settings
require('general')

-- vim plugins settings
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

vim.g.loaded_perl_provider = 0

require('lazy').setup({{
    import = 'plugins'
}})

vim.opt.termguicolors = true
vim.cmd.colorscheme "catppuccin"

-- require('lsp')
