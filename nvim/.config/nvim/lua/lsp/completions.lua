vim.opt.completeopt = { "menu", "menuone", "noinsert", "popup" }
vim.opt.shortmess:append "c"

-- Small VSCode like pictograms for nvim LSP
local lspkind = require('lspkind')
lspkind.init()

local lspkind_formatter = lspkind.cmp_format {
  mode = "symbol_text",
  menu = {
    buffer = "[buf]",
    nvim_lsp = "[LSP]",
    path = "[PATH]",
    luasnip = "[SNIP]",
  },
}

-- nvim-cmp configs
-- This is what sets up and triggers autocompletion
local cmp = require('cmp')

cmp.setup({
  formatting = {
    fields = { "abbr", "kind", "menu" },
    expandable_indicator = true,
    format = function(entry, vim_item)
      vim_item = lspkind_formatter(entry, vim_item)
      return vim_item
    end,
  },
  snippet = {
    expand = function(args)
      --ADD any new snippet engines here
      require('luasnip').lsp_expand(args.body)
      vim.snippet.expand(args.body)
    end,
  },
  window = {
    completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
  }),
  sources = cmp.config.sources({
     -- Add any sources exposed by snippet plugins
    { name = 'nvim_lsp', keyword_length = 4 },
    { name = 'luasnip', keyword_length = 3 },
    { name = 'path', keyword_length = 2 },
    { name = 'render-markdown', keyword_length = 2 },
  }, {
    { name = 'buffer', keyword_length = 5 },
  })
})
