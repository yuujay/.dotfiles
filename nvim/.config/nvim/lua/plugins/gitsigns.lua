return {
    'lewis6991/gitsigns.nvim',
    lazy = false,
    version = "*",
    keys = {
        {"<leader>gj", "<cmd>Gitsigns next_hunk<CR>", desc="Git Next Hunk"},
        {"<leader>gk", "<cmd>Gitsigns prev_hunk<CR>", desc="Git Previous Hunk"},
        {"<leader>gb", "<cmd>Gitsigns blame_line<CR>", desc="Git blame line"},
        {"<leader>gu", "<cmd>Gitsigns reset_hunk<CR>", desc="Git Undo Hunk"},
        {"<leader>gs", "<cmd>Gitsigns stage_hunk<CR>", desc="Git Stage Hunk"},
        {"<leader>gh", "<cmd>Gitsigns preview_hunk<CR>", desc="Git Preview Hunk"},
    },
    opts = {
        options = {
            signs = {
                add          = { text = '│' },
                change       = { text = '│' },
                delete       = { text = '_' },
                topdelete    = { text = '‾' },
                changedelete = { text = '~' },
                untracked    = { text = '┆' },
            },
            signcolumn = false,
            numhl      = false,
            linehl     = false,
            word_diff  = false,
            watch_gitdir = {
                follow_files = true
            },
            attach_to_untracked = true,
            current_line_blame = false,
            current_line_blame_opts = {
                virt_text = true,
                virt_text_pos = 'eol', -- 'eol' | 'overlay' | 'right_align'
                delay = 1000,
                ignore_whitespace = false,
            },
            current_line_blame_formatter = '<author>, <author_time:%Y-%m-%d> - <summary>',
            sign_priority = 6,
            update_debounce = 100,
            status_formatter = nil,
            max_file_length = 40000,
            preview_config = {
                border = 'single',
                style = 'minimal',
                relative = 'cursor',
                row = 0,
                col = 1
            },
            yadm = {
                enable = false
            },
        }
    }
}
