return {
  'zk-org/zk-nvim',
  lazy = false,

  config = function()
    require("zk").setup({
      picker = "telescope",
    })
  end,
  keys = {
    {"<leader>kn", "<Cmd>ZkNew { dir = 'inbox', title = vim.fn.input('Title: ') }<CR>", desc="zk new"},
    {"<leader>ku", "<Cmd>ZkNew { dir = 'work', group = 'work'}<CR>", desc="ZK Open Work Updates"},
    {"<leader>kj", "<Cmd>ZkNew { dir = 'journal/daily', group = 'journal'}<CR>", desc="ZK Open Journal"},
    {"<leader>ka", "<Cmd>ZkNew { dir = 'work/ankit', group = 'work'}<CR>", desc="ZK Open Ankit Notes"},
    {"<leader>km", "<Cmd>ZkNew { dir = 'work/1-1', group = 'work'}<CR>", desc="ZK Open MOS Notes"},
  },
}
