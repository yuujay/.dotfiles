local nvim_lsp = require('lspconfig')

vim.cmd [[autocmd ColorScheme * highlight NormalFloat guibg=#1f2335]]
vim.cmd [[autocmd ColorScheme * highlight FloatBorder guifg=white guibg=#1f2335]]

local border = {
    {"╭", "FloatBorder"},
    {"─", "FloatBorder"},
    {"╮", "FloatBorder"},
    {"│", "FloatBorder"},
    {"╯", "FloatBorder"},
    {"─", "FloatBorder"},
    {"╰", "FloatBorder"},
    {"│", "FloatBorder"},
}

local open_floating_preview = vim.lsp.util.open_floating_preview
function vim.lsp.util.open_floating_preview(contents, syntax, opts, ...)
  opts = opts or {}
  opts.border = opts.border or border
  return open_floating_preview(contents, syntax, opts, ...)
end

-- THIS BELOW SECTION IS REQUIRED AS LSPs DON'T PROVIDE keybindings
--
-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end
  --Enable completion triggered by <c-x><c-o>
  buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')
  local opts = { noremap=true, silent=true }

    -- See `:help vim.lsp.*` for documentation on any of the below functions
  buf_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  buf_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
  buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)

  -- buf_set_keymap('n', '<leader>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
  buf_set_keymap('n', '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
  buf_set_keymap('n', '<leader>cf', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)
  buf_set_keymap('n', '<leader>ch', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
  buf_set_keymap('n', '<leader>cj', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opts)
  buf_set_keymap('n', '<leader>ck', '<cmd>lua vim.diagnostic.goto_next()<CR>', opts)
  buf_set_keymap('n', '<leader>cl', '<cmd>lua vim.diagnostic.setloclist()<CR>', opts)
  buf_set_keymap('n', '<leader>cr', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
  buf_set_keymap('n', '<leader>cs', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
  buf_set_keymap('n', '<leader>e', '<cmd>lua vim.diagnostic.open_float()<CR>', opts)

end


-- *** IMPORTANT *** UPDATE THE `servers` LIST AS NEW SERVES ARE ADDED
-- 'ansiblels', 'jsonls', 'bashls', 'cssls', 'dotls',  - add these back after installing LSP
local servers = {'ansiblels', 'dockerls', 'emmet_ls', 'eslint', 'gopls', 'solargraph', 'sumneko_lua', 'tsserver', 'vimls', 'yamlls' }

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
-- brew install lua-language-server
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
