-- Initialize Lazy
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- NOTE: Set leader here as Lazy requires it to be here
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

require('lazy').setup({
    spec = {
        {
            import = "plugins"
        },
    },
})
