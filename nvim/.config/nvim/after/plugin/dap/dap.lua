local ok, _ = pcall(require, "dap")
if not ok then return end

local dap = require('dap')
local ui = require('dapui')

require('dapui').setup()
require('nvim-dap-virtual-text').setup()

-- Diagnostics setting
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = "goto previous diagnostics" })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = "goto next diagnostics" })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = "open diagnostics of current line" })
vim.keymap.set('n', '<leader>qq', vim.diagnostic.setloclist, { desc = "open diagnostics window" })

vim.diagnostic.config({
  virtual_text = false, -- Set this to true if you want diagnostic message on each line
  signs = true,
  update_in_insert = false,
  underline = true,
  severity_sort = true,
  float = true,
})

-- Debugging
vim.fn.sign_define("DapBreakpoint", { text = "🔴", texthl = "", linehl = "", numhl = "Yellow" })
vim.fn.sign_define("DapStopped", { text = "▶", texthl = "Green", linehl = "ColorColumn", numhl = "Green" })

dap.listeners.before.attach.dapui_config = function()
  ui.open()
end
dap.listeners.before.launch.dapui_config = function()
  ui.open()
end
dap.listeners.before.event_terminated.dapui_config = function()
  ui.close()
end
dap.listeners.before.event_exited.dapui_config = function()
  ui.close()
end


-- Eval var under cursor. See if this is need when using ghost/virtual text
-- vim.keymap.set("n", "<space>?", function()
--   require("dapui").eval(nil, { enter = true })
-- end)

vim.keymap.set("n", "<leader>5", dap.continue)
vim.keymap.set("n", "<leader>6", dap.clear_breakpoints)
vim.keymap.set("n", "<leader>7", dap.disconnect)
vim.keymap.set("n", "<leader>3", dap.step_over)
vim.keymap.set("n", "<leader>2", dap.step_into)
vim.keymap.set("n", "<leader>9", dap.step_out)
vim.keymap.set("n", "<leader>0", dap.restart)
vim.keymap.set("n", "<leader>b", dap.toggle_breakpoint)
vim.keymap.set("n", "<leader>dr", dap.repl.open)
vim.keymap.set("n", "<leader>B", function() dap.set_breakpoint(nil, nil, vim.fn.input('Breakpoint condition: ')) end )
