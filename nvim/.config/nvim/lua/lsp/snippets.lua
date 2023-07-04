local ls = require("luasnip")
local snip = ls.snippet
local node = ls.snippet_node
local text = ls.text_node
local insert = ls.insert_node
local func = ls.function_node
local choice = ls.choice_node
local dynamicn = ls.dynamic_node

local opts = { noremap = true, silent = true }
vim.keymap.set("i", "<C-j>", "<cmd>lua require'luasnip'.jump(1)<CR>", opts)
vim.keymap.set("s", "<C-j>", "<cmd>lua require'luasnip'.jump(1)<CR>", opts)
vim.keymap.set("i", "<C-k>", "<cmd>lua require'luasnip'.jump(-1)<CR>", opts)
vim.keymap.set("s", "<C-k>", "<cmd>lua require'luasnip'.jump(-1)<CR>", opts)

-- Predefined snippets
require'luasnip'.filetype_extend("ruby", {"css", "erb", "gitcommit", "go", "html", "javascript", "kubernetes", "lua", "markdown", "rails", "scala", "shell"})

-- Snippets in selection mode
ls.config.set_config({
  store_selection_keys = '<C-s>',
})

local date = function() return {os.date('%Y-%m-%d')} end

ls.snippets = {
    all = {
        snip({
            trig = "log",
            namr = "JS log",
            dscr = "JavaScript Console logging"
        },{
            text({"", 'console.log("'}),
            insert(1 , "My logged value"),
            text({'")', ""}),
            insert(0)
        }),
        snip({
            trig = "pry",
            namr = "binding pry",
            dscr = "place debug pointer for rails"
        },{
            text({"", "require 'pry'"}), 
            text({"", "binding.pry", ""})
        }),
        snip({
            trig = "meta",
            namr = "Metadata",
            dscr = "Yaml metadata format for markdown"
        },
        {
            text({"---",
            "title: "}), insert(1, "note_title"), text({"", 
            "author: "}), insert(2, "author"), text({"", 
            "date: "}), func(date, {}), text({"",
            "categories: ["}), insert(3, ""), text({"]",
            "lastmod: "}), func(date, {}), text({"",
            "tags: ["}), insert(4), text({"]",
            "comments: true",
            "---", ""}),
            insert(0)
          }),
          snip({
              trig = "link-ujg",
              namr = "markdown_link",
              dscr = "Create markdown link [txt](url)"
          },
          {
              text('['),
              insert(1),
              text(']('),
              func(function(_, snip)
                return snip.env.TM_SELECTED_TEXT[1] or {}
              end, {}),
              text(')'),
              insert(0),
          }),
    }
}

