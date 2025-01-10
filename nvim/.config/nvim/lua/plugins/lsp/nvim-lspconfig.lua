return {
    {
        'neovim/nvim-lspconfig',
        config = function()
            require('lspconfig').lua_ls.setup {}
            require('lspconfig').gopls.setup {}
            require('plugins.lsp.keybinding')
        end,
    }
}
