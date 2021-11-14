local o = vim.o
local wo = vim.wo
local bo = vim.bo

-- global options
o.autoindent = true
o.autoread = true -- TODO: Fix autoread
o.colorcolumn = '79'
o.copyindent = true
o.cursorline = true
o.dir = '/tmp'
o.hlsearch = true
o.ignorecase = true
o.incsearch = true
o.laststatus = 2
o.mouse = 'a'
o.scrolloff = 12
o.smartcase = true
o.smartindent = true
o.smarttab = true
o.swapfile = false

-- window-local options
wo.number = true
wo.relativenumber = false
wo.wrap = true

-- ------------------ buffer-local options ---------------------------

-- Tabs/Spacing
o.expandtab = true
o.shiftwidth = 4
o.softtabstop = 4
o.tabstop = 4

-- Need this for using fonts
-- bo.encoding = 'UTF-8'

-- Highlight trialing spaces
-- highlight RedundantSpaces ctermbg
