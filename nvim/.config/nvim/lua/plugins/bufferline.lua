
vim.opt.termguicolors = true

require('bufferline').setup({
    options = {
        always_show_bufferline = true,
        diagnostics = 'nvim_lsp',
        persist_buffer_sort = true,
        separator_style = 'thick',
        ---@diagnostic disable-next-line: unused-local
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
    },
})
