return {
  'zk-org/zk-nvim',
  lazy = false,

  config = function()
    require("zk").setup({
      picker = "telescope",
    })
    -- Disable folding after zk-nvim initializes as zk doesn't honor nvim's after/ftplugin configs for some reason.
    vim.api.nvim_create_autocmd("BufReadPost", {
      pattern = "*.md",
      callback = function()
        vim.opt_local.foldmethod = "manual"
        vim.opt_local.foldenable = false
      end,
    })
  end,
  keys = {
    {"<leader>mn", "<Cmd>ZkNew { dir = 'inbox', title = vim.fn.input('Title: ') }<CR>", desc="zk new"},
    {"<leader>mg", "<Cmd>ZkNew { dir = 'inbox', group = vim.fn.input('Group: ') }<CR>", desc="zk new file under a group"},
    {"<leader>mu", "<Cmd>ZkNew { dir = 'work', group = 'work'}<CR>", desc="ZK Open Work Updates"},
    {"<leader>mj", "<Cmd>ZkNew { dir = 'journal/daily', group = 'journal'}<CR>", desc="ZK Open Journal"},
    {"<leader>mwt", "<Cmd>ZkNew { dir = 'work', title = 'todo'}<CR>", desc="ZK Open Work To-Do Notes"},
    {"<leader>mpt", "<Cmd>ZkNew { dir = 'personal', title = 'todo'}<CR>", desc="ZK Open Personal To-fo Notes"},
    {"<leader>ma", "<Cmd>ZkNew { dir = 'work/ankit', group = 'work'}<CR>", desc="ZK Open Ankit Notes"},
    {"<leader>mm", "<Cmd>ZkNew { dir = 'work/1-1', group = 'work'}<CR>", desc="ZK Open MOS Notes"},
    {"<leader>mqmm", "<Cmd>ZkNew { dir = 'work/meeting-notes', group = 'meeting-notes'}<CR>", desc="ZK Quick open meeting notes"},
    {"<leader>mmm", "<Cmd>ZkNew { dir = 'work/meeting-notes', group = 'meeting-notes', title = vim.fn.input('Title: ')}<CR>", desc="ZK open meeting notes with a title"},
  },
}

