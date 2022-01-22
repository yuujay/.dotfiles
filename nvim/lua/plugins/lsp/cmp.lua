local lspkind = require 'lspkind'
lspkind.init()

-- TODO: Clean this up
-- Most configs are from `nvim-cmp` github page
-- TJ's [youtube video](https://www.youtube.com/watch?v=_DnmphIwnjo&ab_channel=TJDeVries)
-- https://github.com/tjdevries/config_manager/blob/master/xdg_config/nvim/after/plugin/completion.lua
local cmp = require('cmp')
local luasnip = require('luasnip')

require("luasnip/loaders/from_vscode").lazy_load()

vim.o.completeopt = "menu,menuone,noselect,noinsert"

--   פּ ﯟ   some other good icons
-- local kind_icons = {
--   Text = "",
--   Method = "m",
--   Function = "",
--   Constructor = "",
--   Field = "",
--   Variable = "",
--   Class = "",
--   Interface = "",
--   Module = "",
--   Property = "",
--   Unit = "",
--   Value = "",
--   Enum = "",
--   Keyword = "",
--   Snippet = "",
--   Color = "",
--   File = "",
--   Reference = "",
--   Folder = ""s
--   EnumMember = "",
--   Constant = "",
--   Struct = "",
--   Event = "",
--   Operator = "",
--   TypeParameter = "",
-- }

cmp.setup ({
    documentation = true,
    snippet = {
      expand = function(args)
        require("luasnip").lsp_expand(args.body)
      end,
    },
    mapping = {
        ["<C-d>"] = cmp.mapping.scroll_docs(-4),
        ["<C-f>"] = cmp.mapping.scroll_docs(4),
        ["<C-e>"] = cmp.mapping.close(),
        ["<C-Space>"] = cmp.mapping.complete(),
        ["<C-y>"] = cmp.mapping(
          cmp.mapping.confirm {
            behavior = cmp.ConfirmBehavior.Insert,
            select = true,
          },
          { "i", "c" }
        ),
    },
    sources = {
        { name = "luasnip" },
        { name = "nvim_lsp" },
        { name = "nvim_lua" },
        { name = "buffer", keyword_length = 4 },
        { name = "path" },
        -- { name = "gh_issues" },
    },
    formatting = {
        fields = {'kind', 'abbr', 'menu'},
        with_text = true,
        format = lspkind.cmp_format {
            menu = {
                buffer = "[buf]",
                nvim_lsp = "[LSP]",
                nvim_lua = "[api]",
                path = "[path]",
                luasnip = "[snip]",
                gh_issues = "[issues]",
            },
        },
    },
    -- The experimental section doesnt work as of now on mac
    experimental = {
        native_menu = false,
        ghost_text = true
    },
})

-- cmp.setup ({
--     completion = {
--         autocomplete = true, 
--     },
--     snippet = {
--       -- REQUIRED - you must specify a snippet engine
--       expand = function(args)
--         vim.fn["vsnip#anonymous"](args.body)
--       end
--     },
--     sources = cmp.config.sources({
--         { name = 'nvim_lsp' },
--         { name = 'vsnip' },
--     },
--     {
--         { name = 'nvim_lua' },
--     },
--     {
--         { name = 'buffer' },
--         { name = 'calc' },
--         { name = 'path' },
--         { name = 'snippets_nvim' },
--         { name = 'tags' },
--         { name = 'treesitter' },
--     }),
--     mapping = {
--         ['<C-b>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),

--         ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
--         ['<C-o>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
--         ['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
--         ['<C-e>'] = cmp.mapping({
--           i = cmp.mapping.abort(),
--           c = cmp.mapping.close(),
--         }),
--         -- ['<CR>'] = cmp.mapping {
--         --   i = cmp.mapping.confirm({ select = true }),
--         -- }, 
--     },
--     -- -- enabled = true;
--     -- -- debug = false;
--     -- -- min_length = 1;
--     -- -- preselect = 'enable';
--     -- -- throttle_time = 80;
--     -- -- source_timeout = 200;
--     -- -- incomplete_delay = 400;
--     -- -- max_abbr_width = 100;
--     -- -- max_kind_width = 100;
--     -- -- max_menu_width = 100;
-- })

