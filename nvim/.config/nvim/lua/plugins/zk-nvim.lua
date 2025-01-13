return {
  'zk-org/zk-nvim',
  lazy = false,

  config = function()
    require("zk").setup({
      picker = "telescope",
      -- lsp = {
      --   -- `config` is passed to `vim.lsp.start_client(config)`
      --   config = {
      --     cmd = { "zk", "lsp" },
      --     name = "zk",
      --   },
      --   -- automatically attach buffers in a zk notebook that match the given filetypes
      --   auto_attach = {
      --     enabled = true,
      --     filetypes = { "markdown" },
      --   },
      -- },
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
    {"<leader>mpt", "<Cmd>ZkNew { dir = 'personal', title = 'todo'}<CR>", desc="ZK Open Personal To-fo Notes"},
    {"<leader>mj", "<Cmd>ZkNew { dir = 'journal/daily', group = 'journal'}<CR>", desc="ZK Open Journal"},
    {"<leader>mbn", "<Cmd>ZkNew { dir = 'personal', group = 'book', title = vim.fn.input('Title: ')}<CR>", desc="ZK new book note"},
    {"<leader>mpn", "<Cmd>ZkNew { dir = 'personal', group = 'podcast', title = vim.fn.input('Title: ')}<CR>", desc="ZK new podcast note"},

    {"<leader>msu", "<Cmd>ZkNew { dir = 'work', group = 'work'}<CR>", desc="ZK Open Scrum Updates"},
    {"<leader>mwt", "<Cmd>ZkNew { dir = 'work', title = 'todo'}<CR>", desc="ZK Open Work To-Do Notes"},
    {"<leader>ma", "<Cmd>ZkNew { dir = 'work/ankit', group = 'ankit', title = vim.fn.input('Title: ') }<CR>", desc="ZK Open Ankit Notes"},
    {"<leader>mlu", "<Cmd>ZkNew { dir = 'work/1-1', group = 'mos-lead'}<CR>", desc="ZK Open MOS Leads Notes"},
    {"<leader>mqmm", "<Cmd>ZkNew { dir = 'work/meeting-notes', group = 'meeting-notes'}<CR>", desc="ZK Quick open meeting notes"},
    {"<leader>mmm", "<Cmd>ZkNew { dir = 'work/meeting-notes', group = 'meeting-notes', title = vim.fn.input('Title: ')}<CR>", desc="ZK open meeting notes with a title"},
  },
}

