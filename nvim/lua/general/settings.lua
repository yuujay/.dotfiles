local o = vim.o
local wo = vim.wo
local bo = vim.bo

-- global options
o.swapfile = false
o.dir = '/tmp'
o.smartcase = true
o.laststatus = 2
o.hlsearch = true
o.incsearch = true
o.ignorecase = true
o.scrolloff = 12
o.autoindent = true
o.autoread = true -- TODO: Fix autoread
o.colorcolumn = '80'
o.cursorline = true
o.mouse = 'a'

-- window-local options
wo.number = true
wo.relativenumber = false
wo.wrap = true

-- syntax = 'on' TODO: CONFIRM THIS


-- ------------------ buffer-local options ---------------------------

-- Tabs/Spacing
bo.expandtab = true
bo.shiftwidth = 4
bo.softtabstop = 4
bo.tabstop = 4

-- Need this for using fonts
-- bo.encoding = 'UTF-8'

-- Highlight trialing spaces
-- highlight RedundantSpaces ctermbg
