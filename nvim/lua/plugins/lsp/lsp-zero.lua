local lsp = require("lsp-zero")

lsp.ensure_installed({
    'ansiblels',
    'actionlint',
    'dockerls',
    'emmet_ls',
    'eslint',
    'gopls',
    'rust_analyzer',
    'solargraph',
    'sumneko_lua',
    'tsserver',
    'yamlls',
})

lsp.setup()

vim.diagnostic.config({
    virtual_text = true,
})
