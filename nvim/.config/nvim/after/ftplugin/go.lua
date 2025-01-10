local set = vim.opt_local
local dapgo = require('dap-go').setup()

set.expandtab = false
set.tabstop = 4
set.shiftwidth = 4

vim.keymap.set("n", "<space>td", function()
  dapgo.debug_test()
end, { buffer = 0 })
