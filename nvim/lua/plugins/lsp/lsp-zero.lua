-- This file contains configs for LSP which includes config of multiple plugin
-- 1. lsp-zero
-- 2. nvim-cmp
-- 3. lspkind
-- and some common vim diagnostics (Check if this can be moved to a different file)
-- Insipired from 
--  1. https://github.com/ThePrimeagen/init.lua/blob/master/after/plugin/lsp.lua
--  2. https://github.com/nvim-lua/kickstart.nvim/blob/master/init.lua

-- lsp-zero config
local lsp = require("lsp-zero")

-- NOTE: setup method needs to be called early so that it doesn't complain about `nvim-lsp-installer`
-- DO NOT MOVE THIS BELOW
lsp.setup()

lsp.preset("recommended")

lsp.set_preferences({
    suggest_lsp_servers = true,
    sign_icons = {
        error = " ",
        warn = " ",
        hint = " ",
        info = " "
    }
})

lsp.ensure_installed({
    'ansiblels',
    'dockerls',
    'emmet_ls',
    'eslint',
    -- 'gopls',
    'rust_analyzer',
    'solargraph',
    'sumneko_lua',
    'tsserver',
    'yamlls',
})

-- Small VSCode like pictograms for nvim LSP
local lspkind = require('lspkind')
lspkind.init()

-- cmp configs
local cmp = require('cmp')

-- NOTE: Need this specifically since `lsp-zero` doesn't have the experimental overrides for cmp
cmp.setup ({
    experimental = {
        native_menu = false,
        ghost_text = true -- This is cool. Took a long time coming into vim.
    }
})

local cmp_mappings = lsp.defaults.cmp_mappings({
  ['<C-k>'] = cmp.mapping.select_prev_item(),
  ['<C-j>'] = cmp.mapping.select_next_item(),
  ['<C-y>'] = cmp.mapping.confirm ({
      behavior = cmp.ConfirmBehavior.Insert,
      select = true,
  }),
  ["<C-Space>"] = cmp.mapping.complete(),
})

-- disable completion with tab. this helps with copilot setup
-- Enable this when starting to use co-pilot
cmp_mappings['<Tab>'] = nil
cmp_mappings['<S-Tab>'] = nil

lsp.setup_nvim_cmp({
    window = {
        documentation = cmp.config.window.bordered(),
    },
    mapping = cmp_mappings,
    formatting = {
        fields = {'kind', 'abbr', 'menu'},
        with_text = true,
        format = lspkind.cmp_format {
            menu = {
                buffer = '[BUF]',
                nvim_lsp = '[LSP]',
                nvim_lua = '[LUA]',
                luasnip = '[SNIP]',
                path = '[PATH]',
                -- gh_issues = '[issues]',
            },
        },
    },
})

-- LSP settings.
--  This function gets run when an LSP connects to a particular buffer.
local on_attach = function(_, bufnr)
  -- We create a function that lets us more easily define mappings specific
  -- for LSP related items. It sets the mode, buffer and description for us each time.
  local nmap = function(keys, func, desc)
    if desc then
      desc = 'LSP: ' .. desc
    end

    vim.keymap.set('n', keys, func, { buffer = bufnr, desc = desc })
  end

  nmap('<leader>rn', vim.lsp.buf.rename, '[R]e[n]ame')
  nmap('<leader>ca', vim.lsp.buf.code_action, '[C]ode [A]ction')

  nmap('gd', vim.lsp.buf.definition, '[G]oto [D]efinition')
  nmap('gr', require('telescope.builtin').lsp_references, '[G]oto [R]eferences')
  nmap('gI', vim.lsp.buf.implementation, '[G]oto [I]mplementation')
  nmap('<leader>D', vim.lsp.buf.type_definition, 'Type [D]efinition')
  nmap('<leader>ds', require('telescope.builtin').lsp_document_symbols, '[D]ocument [S]ymbols')
  nmap('<leader>ws', require('telescope.builtin').lsp_dynamic_workspace_symbols, '[W]orkspace [S]ymbols')

  -- See `:help K` for why this keymap
  nmap('K', vim.lsp.buf.hover, 'Hover Documentation')
  nmap('<C-k>', vim.lsp.buf.signature_help, 'Signature Documentation')

  -- Lesser used LSP functionality
  nmap('gD', vim.lsp.buf.declaration, '[G]oto [D]eclaration')

  -- Create a command `:Format` local to the LSP buffer
  vim.api.nvim_buf_create_user_command(bufnr, 'Format', function(_)
    vim.lsp.buf.format()
  end, { desc = 'Format current buffer with LSP' })
end

-- Diagnostics 
vim.diagnostic.config({
    virtual_text = false, -- Set this to true if you want diagnostic message on each line
    signs = true,
    update_in_insert = false,
    underline = true,
    severity_sort = true,
    float = true,
})
