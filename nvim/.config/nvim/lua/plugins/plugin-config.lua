vim.env.FZF_DEFAULT_COMMAND = 'ag -g ""'
vim.g.airline_powerline_fonts = 1
vim.g.NERDTreeShowHidden = 1

-- `bufferline`
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

-- `nvim-treesitter`
require('nvim-treesitter.configs').setup({
    ensure_installed = {"bash", "c", "css", "go",  "fish", "help", "html", "java", "javascript", "json", "lua", "markdown", "ruby", "typescript", "vim", "yaml"},
    highlight =  {
        enable = true,
    },
})

-- `firenvim`
vim.api.nvim_command([[
    augroup UJ
        autocmd BufEnter confluence.mathworks.com_*.txt set filetype=markdown
        autocmd BufEnter github.com_*.txt set filetype=markdown
    augroup END
]])
