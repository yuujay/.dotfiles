### Post Installation
- After installation of NeoVim, first thing that we have to do is run `:checkhealth` and confirm that there are no errors.
- As of 0.5v of NeoVim, LSP is supported but no autocompletion. Need to make use of external plugins such as `nvim-compe` or `nvim-cmp`

### Troubleshooting

#### Solargraph not working as expected
- Confirm that the gem is installed with `gem which solargraph` and NOT with `which solargraph`
- Check for logs is `~/.cache/nvim/lsp.log`

### Resources:
- [Introduction to nvim and lua](https://vonheikemen.github.io/devlog/tools/configuring-neovim-using-lua/)
- [LSP Config screencast blog](https://www.chrisatmachine.com/Neovim/27-native-lsp/)
- https://icyphox.sh/blog/nvim-lua/
- https://alpha2phi.medium.com/neovim-init-lua-e80f4f136030
- https://github.com/nanotee/nvim-lua-guide
- https://github.com/mthnglac/dotfiles/tree/master/nvim
- [Configuring LSP](https://blog.diegoquiroz.com/how-to-use-neovim-lsp-e8f79f1f0d7c)
- [Niche nvim config](https://alpha2phi.medium.com/niche-neovim-plugins-722b34f76291)
