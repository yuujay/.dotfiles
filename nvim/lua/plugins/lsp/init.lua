--        ||
--      \ || /
--       \||/
--        \/
-- *** IMPORTANT *** UPDATE THE `servers` in `keybindings.lua` file 
require ('plugins.lsp.compe-config')
require ('plugins.lsp.docker')
require ('plugins.lsp.go')
require ('plugins.lsp.html')
require ('plugins.lsp.ruby')
require ('plugins.lsp.ts')
require'lspconfig'.bashls.setup{}
require ('plugins.lsp.keybindings')

vim.g.loaded_perl_provider = 0

------ START SERVERS

-- require'lspconfig'.graphql.setup{}
-- require'lspconfig'.java_language_server.setup{}
-- require'lspconfig'.puppet.setup{}
-- require'lspconfig'.rust_analyzer.setup{}
require'lspconfig'.ansiblels.setup{}
require'lspconfig'.cssls.setup{}
require'lspconfig'.dotls.setup{}
require'lspconfig'.eslint.setup{}
require'lspconfig'.jsonls.setup{}
require'lspconfig'.vimls.setup{}
require'lspconfig'.yamlls.setup{}

--- SERVER INSTALLATIONS

-- brew install ansible-lint
-- npm i -g bash-language-server
-- npm i -g dot-language-server
-- npm i -g graphql-language-service-cli
-- npm i -g typescript typescript-language-server
-- npm i -g vim-language-server
-- npm i -g vscode-json-extracted
-- npm i -g vscode-langservers-extracted
-- npm i -g vscode-html-languageserver-bin
-- yarn global add ansible-language-server
-- yarn global add yaml-language-server

