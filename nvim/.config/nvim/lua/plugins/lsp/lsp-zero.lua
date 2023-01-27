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

lsp.preset("recommended")

lsp.set_preferences({
    -- suggest_lsp_servers = true,
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
    'gopls',
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

lsp.on_attach(function(_, bufnr)

    local nmap = function(keys, func, desc)
        if desc then
            desc = 'LSP: ' .. desc
        end

        vim.keymap.set('n', keys, func, { buffer = bufnr, desc = desc })
    end

    nmap('<leader>rn', vim.lsp.buf.rename, '[R]e[n]ame')
    nmap('<leader>ca', vim.lsp.buf.code_action, '[C]ode [A]ction')

    nmap('gd', require('telescope.builtin').lsp_definitions, '[G]oto [D]efinition')
    nmap('gr', require('telescope.builtin').lsp_references, '[G]oto [R]eferences')
    nmap('gI', vim.lsp.buf.implementation, '[G]oto [I]mplementation')
    nmap('<leader>D', vim.lsp.buf.type_definition, 'Type [D]efinition')
    nmap('<leader>ds', require('telescope.builtin').lsp_document_symbols, '[D]ocument [S]ymbols')
    nmap('<leader>ws', require('telescope.builtin').lsp_dynamic_workspace_symbols, '[W]orkspace [S]ymbols')

    -- See `:help K` for why this keymap
    nmap('K', vim.lsp.buf.hover, 'Hover Documentation')
    nmap('<C-s>', vim.lsp.buf.signature_help, 'Signature Documentation')
end)

lsp.setup()

-- Diagnostics
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = "goto previous diagnostics" })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = "goto next diagnostics" })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = "open diagnostics of current line" })
vim.keymap.set('n', '<leader>qq', vim.diagnostic.setloclist, { desc = "open diagnostics window" })

vim.diagnostic.config({
    virtual_text = false, -- Set this to true if you want diagnostic message on each line
    signs = true,
    update_in_insert = false,
    underline = true,
    severity_sort = true,
    float = true,
})
