return {
    "nvim-neo-tree/neo-tree.nvim",
    cmd = "Neotree",
    branch = "v2.x",
    keys = {
        {"<leader>n", "<cmd>Neotree toggle<CR>", desc="NeoTree"},
        {"<leader>nf", "<cmd>NeoTreeFocus<CR>", desc="NeoTreeFocus"},
    },
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    },
    opts = {
        filesystem = {
            follow_current_file = true,
            hijack_netrw_behavior = "open_current"
        }
    }
}
