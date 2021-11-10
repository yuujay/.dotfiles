require ('plugins.lsp.compe-config')
require ('plugins.lsp.go')
require ('plugins.lsp.ruby')

vim.g.loaded_perl_provider = 0

local nvim_lsp = require('lspconfig')

-- THIS BELOW SECTION IS REQUIRED AS LSPs DON'T PROVIDE keybindings
--
-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

  --Enable completion triggered by <c-x><c-o>
  buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  local opts = { noremap=true, silent=true }

  -- See `:help vim.lsp.*` for documentation on any of the below functions
  buf_set_keymap('n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  buf_set_keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
  buf_set_keymap('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
  buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
  buf_set_keymap('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
  buf_set_keymap('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
  buf_set_keymap('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
  buf_set_keymap('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
  buf_set_keymap('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
  buf_set_keymap('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
  buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
  buf_set_keymap('n', '<space>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
  buf_set_keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
  buf_set_keymap('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
  buf_set_keymap('n', '<space>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
  buf_set_keymap("n", "<space>f", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)

end

-- Use a loop to conveniently call 'setup' on multiple servers and
-- map buffer local keybindings when the language server attaches
-- UPDATE THE `servers` LIST AS NEW SERVES ARE ADDED
local servers = { 'solargraph', 'gopls' }
for _, lsp in ipairs(servers) do
  nvim_lsp[lsp].setup {
	on_attach = on_attach,
	flags = {
	  debounce_text_changes = 150,
	}
  }
end



------ START SERVERS
-- require'lspconfig'.bashls.setup{}
-- require'lspconfig'.ansiblels.setup{}
-- require'lspconfig'.cssls.setup{}
-- require'lspconfig'.dotls.setup{}
-- require'lspconfig'.dockerls.setup{}
-- require'lspconfig'.eslint.setup{}
-- require'lspconfig'.graphql.setup{}
-- require'lspconfig'.html.setup{}
-- require'lspconfig'.java_language_server.setup{}
-- require'lspconfig'.jsonls.setup{}
-- require'lspconfig'.rust_analyzer.setup{}
-- require'lspconfig'.tsserver.setup{}
-- require'lspconfig'.vimls.setup{}
-- require'lspconfig'.yamlls.setup{}
-- require'lspconfig'.puppet.setup{}

--- SERVER INSTALLATIONS
-- npm install -g typescript typescript-language-server
-- npm install -g vim-language-server
-- yarn global add yaml-language-server
-- yarn global add ansible-language-server
-- npm i -g bash-language-server
-- npm i -g vscode-langservers-extracted
-- npm install -g dockerfile-language-server-nodejs
-- npm install -g dot-language-server
-- npm i -g vscode-langservers-extracted
-- npm install -g graphql-language-service-cli
-- npm install -g typescript typescript-language-server
-- yarn global add yaml-language-server

