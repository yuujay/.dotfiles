return {
    'akinsho/bufferline.nvim',
    lazy = false,
    version = "*",
    dependencies = {
        'onsails/lspkind-nvim',
        'nvim-tree/nvim-web-devicons'
    },
    keys = {
        {"<leader>hh", "<cmd>BufferLineCyclePrev<CR>", desc="BufferLineCyclePrev"},
        {"<leader>ll", "<cmd>BufferLineCycleNext<CR>", desc="BufferLineCycleNext"},
        {"<leader>pn", "<cmd>BufferLineTogglePin<CR>", desc="BufferLineTogglePin"},
    },
    opts = {
        options = {
            always_show_bufferline = true,
            diagnostics = 'nvim_lsp',
            persist_buffer_sort = true,
            separator_style = 'thick',
            buffer_close_icon = '', -- This is required. https://github.com/akinsho/bufferline.nvim/issues/725
            diagnostics_indicator = function(_context, _level, diagnostics_dict, _count)
                local s = " "
                for e, n in pairs(diagnostics_dict) do
                    local sym = e == "error" and " "
                    or (e == "warning" and " ")
                    or (e == "hint" and " ")
                    or (e == "info" and " ")
                    s = s .. sym .. n
                end
                return s
            end
        }
    }
}
