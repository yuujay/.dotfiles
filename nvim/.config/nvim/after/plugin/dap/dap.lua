local ok, _ = pcall(require, "dap")
if not ok then return end

vim.keymap.set("n", "<leader>5", ":lua require'dap'.continue()<CR>")
vim.keymap.set("n", "<leader>3", ":lua require'dap'.step_over()<CR>")
vim.keymap.set("n", "<leader>2", ":lua require'dap'.step_into()<CR>")
vim.keymap.set("n", "<leader>9", ":lua require'dap'.step_out()<CR>")
vim.keymap.set("n", "<leader>b", ":lua require'dap'.toggle_breakpoint()<CR>")
vim.keymap.set("n", "<leader>B", ":lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>")
vim.keymap.set("n", "<leader>lp", ":lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>")
vim.keymap.set("n", "<leader>dr", ":lua require'dap'.repl.open()<CR>")
vim.keymap.set("n", "<leader>dt", ":lua require'dap-go'.debug_test()<CR>")

require("nvim-dap-virtual-text").setup()
require('dap-go').setup()

-- require('dapui').setup()
require("dapui").setup({
	layouts = {
		{
			elements = {
				{ id = "scopes", size = 0.25 },
				{ id = "breakpoints", size = 0.25 },
				{ id = "stacks", size = 0.25 },
				{ id = "watches", size = 0.25 },
			},
			size = 40,
			position = "left",
		},
		{
			elements = {},
			size = 10,
			position = "bottom",
		},
	},
})

vim.fn.sign_define("DapBreakpoint", { text = "⬢", texthl = "Yellow", linehl = "", numhl = "Yellow" })
vim.fn.sign_define("DapStopped", { text = "▶", texthl = "Green", linehl = "ColorColumn", numhl = "Green" })

-- Diagnostics
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


-- local dap, dapui = require("dap"), require("dapui")

-- dap.listeners.after.event_initialized["dapui_config"] = function()
--   dapui.open()
-- end
-- dap.listeners.before.event_terminated["dapui_config"] = function()
--   dapui.close()
-- end
-- dap.listeners.before.event_exited["dapui_config"] = function()
--   dapui.close()
-- end
