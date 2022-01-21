-- npm i -g vscode-html-languageserver-bin
-- npm i -g emmet-ls
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

require'lspconfig'.html.setup({
    capabilities = capabilities,
})
