--        ||
--      \ || /
--       \||/
--        \/
-- *** IMPORTANT *** UPDATE THE `servers` in `keybindings.lua` file 
require ('plugins.lsp.compe-config')
require ('plugins.lsp.docker')
require ('plugins.lsp.go')
require ('plugins.lsp.ruby')
require ('plugins.lsp.ts')
require ('plugins.lsp.keybindings')

vim.g.loaded_perl_provider = 0

------ START SERVERS
-- require'lspconfig'.bashls.setup{}
-- require'lspconfig'.ansiblels.setup{}
-- require'lspconfig'.cssls.setup{}
-- require'lspconfig'.dotls.setup{}
-- require'lspconfig'.eslint.setup{}
-- require'lspconfig'.graphql.setup{}
-- require'lspconfig'.html.setup{}
-- require'lspconfig'.java_language_server.setup{}
-- require'lspconfig'.jsonls.setup{}
-- require'lspconfig'.rust_analyzer.setup{}
-- require'lspconfig'.vimls.setup{}
-- require'lspconfig'.yamlls.setup{}
-- require'lspconfig'.puppet.setup{}

--- SERVER INSTALLATIONS
-- npm install -g vim-language-server
-- yarn global add yaml-language-server
-- yarn global add ansible-language-server
-- npm i -g bash-language-server
-- npm i -g vscode-langservers-extracted
-- npm install -g dot-language-server
-- npm i -g vscode-langservers-extracted
-- npm install -g graphql-language-service-cli
-- npm install -g typescript typescript-language-server
-- yarn global add yaml-language-server

