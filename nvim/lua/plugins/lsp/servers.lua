require ('plugins.lsp.keybindings')

local nvim_lsp = require('lspconfig')

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
  buf_set_keymap("n", "<space>F", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)
end


-- *** IMPORTANT *** UPDATE THE `servers` LIST AS NEW SERVES ARE ADDED
-- 'ansiblels', 'gopls','jsonls', 'bashls', 'cssls', 'dotls',  - add these back after installing LSP
local servers = {'eslint', 'solargraph', 'tsserver', 'vimls', 'yamlls','dockerls' }

-- Set the LSP capabilities
-- Override the default capabilities with `nvim-cmp` capabilities
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)
capabilities.textDocument.completion.completionItem.snippetSupport = true
capabilities.textDocument.completion.completionItem.resolveSupport = {
  properties = {
    'documentation',
    'detail',
    'additionalTextEdits',
  }
}

-- Use a loop to conveniently call 'setup' on multiple servers and
-- map buffer local keybindings when the language server attaches
for _, lsp in ipairs(servers) do
  nvim_lsp[lsp].setup {
	on_attach = on_attach,
	capabilities = capabilities,
	flags = {
	  debounce_text_changes = 150,
	}
  }
end

--- SERVER INSTALLATIONS

-- brew install ansible-lint
-- gem install --user-install solargraph
-- go install golang.org/x/tools/gopls@latest
-- npm i -g bash-language-server
-- npm i -g dockerfile-language-server-nodejs
-- npm i -g dot-language-server
-- npm i -g emmet-ls
-- npm i -g graphql-language-service-cli
-- npm i -g typescript typescript-language-server
-- npm i -g typescript typescript-language-server
-- npm i -g vim-language-server
-- npm i -g vscode-html-languageserver-bin
-- npm i -g vscode-json-extracted
-- npm i -g vscode-langservers-extracted
-- vim.g.ruby_host_prog = '/Users/gumamahe/.gem/ruby/2.6.0/bin/neovim-ruby-host'
-- yarn global add ansible-language-server
-- yarn global add yaml-language-server
