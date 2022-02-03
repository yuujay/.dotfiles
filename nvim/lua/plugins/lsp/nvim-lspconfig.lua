local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
    severity_sort = true,
    signs = {
        severity_limit = "Hint",
    },
    underline = true,
    update_in_insert = false, -- NOTE: Turn this off if performance becomes slow.
    virtual_text = false,
    -- {
    --     -- Alternative `virtual_text` config
    --     -- severity_limit = "Warning",
    --     prefix = '',
    --     spacing = 4,
    -- },
  }
)
