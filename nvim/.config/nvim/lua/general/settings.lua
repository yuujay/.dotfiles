-- global options
vim.opt.autoindent = true
vim.opt.autoread = true -- TODO: Fix autoread
vim.opt.colorcolumn = '79'
vim.opt.copyindent = true
vim.opt.cursorline = true
vim.opt.dir = '/tmp'
vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.incsearch = true
vim.opt.hlsearch = false
vim.opt.laststatus = 2
vim.opt.mouse = 'a'
vim.opt.scrolloff = 12
vim.opt.signcolumn = "auto:2"
vim.opt.smartcase = true
vim.opt.smartindent = true
vim.opt.smarttab = true
vim.opt.swapfile = false

vim.opt.list = true
vim.opt.listchars = { trail = '.', tab = '>~' }

vim.opt.number = true
vim.opt.relativenumber = false
vim.opt.wrap = true

-- Tabs/Spacing
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.tabstop = 4

-- Need this for using fonts
-- vim.opt.encoding = 'UTF-8'

vim.cmd.colorscheme "catppuccin"
vim.env.FZF_DEFAULT_COMMAND = 'ag -g ""'
vim.g.airline_powerline_fonts = 1
vim.g.loaded_perl_provider = 0

