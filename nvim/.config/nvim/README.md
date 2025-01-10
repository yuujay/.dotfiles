### Setup Overview
At the time of writing `neovim` is on `0.10`. The configuration for LSP is available hence a certain group of plugins were used to provide a neat working experience. This set up is tested and is configured to work on a debian 12. But this should work on *nix and mac systems without much configuration changes.

#### Configuration
This configuration of nvim LSP can be split into 3 parts at a very high level.

- Language Servers
- Autocomplete
- Snippets

##### Language Servers

Language server, DAP, Linters, and Formatter installations are handled through [mason.nvim](https://github.com/williamboman/mason.nvim). This should place the bins under `$HOME/.local/share/nvim/mason/bin`. Make sure it is on PATH. If you don't want to use an additional plugin, install them using command line something like this below.

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

`nvim` runtime makes certain directory have precedence over the other. Listed below is the order of precedence that nvim looks at the `lua` files in them.

    - .config/nvim/*.lua
    - .config/nvim/lua/plugins/*.lua
    - .config/nvim/lua/plugins/**/*.lua --> these dirs would require an init.lua and require other files in this dir.
    - .config/nvim/lua/**/*.lua --> these dirs would require an init.lua and require other files in this dir.
    - .config/nvim/after

`.config/nvim/after/ftplugin` is a special dir that contains lua files with filetype(ft).lua and have configurations specific to that language.

### Post Installation
- After installation of nvim, first thing that we have to do is run `:checkhealth` and confirm that there are no errors.
- As of 0.10v LSP is now inbuilt, completion is still provided via [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)

### Troubleshooting

- Always run  to confirm neovim is in a healthy state
    - `checkhealth` 
    - `checkhealth lsp`
    - `checkhealth dap`

- To check if nvim can find an executable use the command below. This would be useful in troubleshooting lsp and daps are installed and read by nvim

    ```vim
    :echo executable("NAME-OF-BIN")
    ```

- To check if where the binary exists on path execute the following command.

    ```vim
    :echo exepath("NAME-OF-BIN")
    ```
- To check value of a vim variable in neovim, run the following command.

    ```vim
    :=VARIABLE-NAME
    ```

### Resources:
- [Introduction to nvim and lua](https://vonheikemen.github.io/devlog/tools/configuring-neovim-using-lua/)
- Huge inspirations from DeeJ and Primeagen
