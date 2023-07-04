ass
return {
    'akinsho/bufferline.nvim',
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
            diagnostics_indicator = function(_count, _level, diagnostics_dict, _context)
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
