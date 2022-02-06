### Setup Overview
At the time of writing `neovim` is on `0.6.1`. The configuration for LSP is available hence a certain group of plugins were used to provide a neat working experience. This set up is tested and is configured to work on a mac. But this should work on *nix systems without much configuration changes.

#### Configuration
This configuration of nvim LSP can be split into 3 parts at a very high level.

- Language Servers
- Autocomplete
- Snippets

##### Language Servers
`neovim` comes with LSP from v0.5+, this means that it can act as LSP client. However, it is on us to install the acutal language servers. There is a plugin that takes care of the language server installation `williamboman/nvim-lsp-installer`.

But this can be done without plugins by just using CLI tools. A sample of these could be something like the code block below. Look into `servers.lua` to get more information on the LSP config.

```bash
brew install ansible-lint
gem install --user-install solargraph
go install golang.org/x/tools/gopls@latest
npm i -g bash-language-server
npm i -g dockerfile-language-server-nodejs
npm i -g dot-language-server
npm i -g emmet-ls
npm i -g graphql-language-service-cli
npm i -g typescript typescript-language-server
npm i -g typescript typescript-language-server
npm i -g vim-language-server
npm i -g vscode-html-languageserver-bin
npm i -g vscode-json-extracted
npm i -g vscode-langservers-extracted
vim.g.ruby_host_prog = '/Users/gumamahe/.gem/ruby/2.6.0/bin/neovim-ruby-host'
yarn global add ansible-language-server
yarn global add yaml-language-server
```
Another nice customization is that nvim's LSP does not come with any out of the box keybindings for code navigation. This provides various options to work with. Current setup uses inbuilt diagnostics api.

Depricated - * Current setup makes of a plugin called `lspsaga`. Keybindings related to this plugin can be found in `nivm/lua/plugins/lsp/lspsaga.lua`. *
TODO: Check if we could make use of Telescope to use it for diagnostics

#### Autocomplete
The setup that I currently make use for autocomplete is mostly provided by `nvim-cmp` plugin which has its own set of plugin dependencies to give a good IDE experience. More information can be found in the [github repo's README](https://github.com/hrsh7th/nvim-cmp).

In addition to `nvim-cmp` there are few other plugins that are currently used. Also, snippet engine plays a major role in this experience. Look into `Snippets` section for more info.

- hrsh7th/cmp-buffer
- hrsh7th/cmp-nvim-lsp
- hrsh7th/cmp-path

### Snippets
Snippets are provided by `luasnip` plugin engine. This has means to pull in snippets from vscode engine in addition to write custom snippets.

Other plugins that are used in addition with `luasnip` are
- L3MON4D3/LuaSnip
- rafamadriz/friendly-snippets
- saadparwaiz1/cmp_luasnip

### Directory Structure and important files
#### install-plugins.lua

This file is the centralized location for all nvim plugin installations. This is the source for all plugin references. The plugin manager in use is `paq`. This needs to be installed before the file could be sourced and run.

#### general

This directory has my opinionated nvim configs and settings. For example, numbering is turned on but reverse numbering is turned off by default. This directory also has generic keybindings that are configured in `keybindings.lua`. Apart from these, there is also `augroup.lua` that has some generic autocommands grouped on some logical contexts.

#### plugins

This is the most configured part of nvim.

`plugin-config.lua` - This file has the configuration focusing on the plugins.
`plugin-shortcuts.lua` - This has shortcuts related to plugins.
`lsp` - This directory has LSP related configuration, starting from server installation, to shortcuts, to specific language configuration.

### Post Installation
- After installation of nvim, first thing that we have to do is run `:checkhealth` and confirm that there are no errors.
- As of 0.6v of nvim, LSP is supported but no autocompletion. Need to make use of external plugins such as `nvim-compe` or `nvim-cmp`

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
- Huge inspirations from DeeJ and Primeagen
