-- lsp-zero config
local lsp = require("lsp-zero")
lsp.preset("recommended")

lsp.set_preferences({
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

lsp.setup()

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
-- cmp_mappings['<Tab>'] = nil
-- cmp_mappings['<S-Tab>'] = nil

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

-- Diagnostics 
vim.diagnostic.config({
    virtual_text = false, -- Set this to true if you want diagnostic message on each line
    signs = true,
    update_in_insert = false,
    underline = true,
    severity_sort = true,
    float = true,
})
