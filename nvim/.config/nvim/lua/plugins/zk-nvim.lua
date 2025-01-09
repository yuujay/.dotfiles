return {
    'zk-org/zk-nvim',
    lazy = false,

    config = function()
        require("zk").setup({
            picker = "telescope",
        })
    end,
    keys = {
        {"<leader>zkn", "<Cmd>ZkNew { dir = 'inbox', title = vim.fn.input('Title: ') }<CR>", desc="zk new"},
        {"<leader>zku", "<Cmd>ZkNew { dir = 'work', group = 'work'}<CR>", desc="ZK Open Work Updates"},
    },
}
