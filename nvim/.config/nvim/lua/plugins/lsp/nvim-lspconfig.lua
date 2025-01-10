print('inside plugin.lsp.lspconfig')
return {
    {
        'neovim/nvim-lspconfig',
        config = function()
            require('lspconfig').lua_ls.setup {}
        end,
    }
}
