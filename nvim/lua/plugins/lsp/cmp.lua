local cmp = require('cmp')
local lspkind = require('lspkind')
local luasnip = require('luasnip')

lspkind.init()
require('luasnip/loaders/from_vscode').lazy_load()

-- Most configs are from `nvim-cmp` github page and
-- TJ's [youtube video](https://www.youtube.com/watch?v=_DnmphIwnjo&ab_channel=TJDeVries)
-- https://github.com/tjdevries/config_manager/blob/master/xdg_config/nvim/after/plugin/completion.lua

vim.o.completeopt = 'menu,menuone,noselect,noinsert'

cmp.setup ({
    window = {
        documentation = cmp.config.window.bordered(),
    },
    snippet = {
      expand = function(args)
        require('luasnip').lsp_expand(args.body)
      end,
    },
    mapping = {
        ['<C-d>'] = cmp.mapping.scroll_docs(-2),
        ['<C-e>'] = cmp.mapping.close(),
        ['<C-f>'] = cmp.mapping.scroll_docs(2),
        ['<C-j>'] = cmp.mapping.select_next_item(),
        ['<C-k>'] = cmp.mapping.select_prev_item(),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-y>'] = cmp.mapping(
          cmp.mapping.confirm {
            behavior = cmp.ConfirmBehavior.Insert,
            select = true,
          },
          { 'i', 'c' }
        ),
    },
    sources = {
        { name = 'luasnip' },
        { name = 'nvim_lsp' },
        { name = 'nvim_lua' },
        { name = 'buffer', keyword_length = 2 },
        { name = 'path' },
        -- { name = 'gh_issues' },
    },
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
    experimental = {
        native_menu = false,
        ghost_text = true -- This is cool. Took a long time coming into vim.
    },
})

