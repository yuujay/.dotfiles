return {
  {
    'neovim/nvim-lspconfig',
    config = function()
      require('lspconfig').lua_ls.setup {}
      require('lspconfig').gopls.setup {}
      require('plugins.lsp.keybinding') -- Key this at the end to have local keybindings take priority
    end,
  }
}
