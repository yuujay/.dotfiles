require('github-theme').setup({
  theme_style = "dark_default",
  comment_style = "italic",
  dark_sidebar = true,
})

require('hop').setup()

-- Most of the config comes from https://github.com/epwalsh/obsidian.nvim
require("obsidian").setup({
  dir = "~/my-vault",
  completion = {
    nvim_cmp = true, -- if using nvim-cmp, otherwise set to false
  }
    -- note_id_func = function(title)
    -- -- Create note IDs in a Zettelkasten format with a timestamp and a suffix.
    -- local suffix = ""
    -- if title ~= nil then
    --   -- If title is given, transform it into valid file name.
    --   suffix = title:gsub(" ", "-"):gsub("[^A-Za-z0-9-]", ""):lower()
    -- else
    --   -- If title is nil, just add 4 random uppercase letters to the suffix.
    --   for _ in 1, 4 do
    --     suffix = suffix .. string.char(math.random(65, 90))
    --   end
    -- end
    -- return tostring(os.time()) .. "-" .. suffix
  -- end
}) 
