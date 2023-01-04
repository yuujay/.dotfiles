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

-- Disable firenvim by default and enble for just confluence, github, and reviewboard
-- TODO: This config doesn't work. Fix this to add blacklist and whitelist.
-- vim.g.firenvim_config = {
--       globalSettings = {
--          alt = 'all',
--       },
--      localSettings = {
--          [['stackoverflow.com']] = {
--              cmdline  = 'neovim',
--              content  = 'text',
--              priority = 0,
--              selector = 'textarea',
--              takeover = 'never',
--          },
--          [['confluence.mathworks.com']] = { takeover= 'always' },
--          [['github.com']] = { takeover= 'always' },
--          [['github.mathworks.com']] = { takeover= 'always' },
--      }
--  }

-- LIMELIGHT CONFIGS USED IN OLD VIM CONFIGS
-- -- Limelight - Turn this on when you want limelight to be enabled by default.
-- -- autocmd VimEnter * Limelight

-- -- Color name (:help cterm-colors) or ANSI code
-- let g:limelight_conceal_ctermfg = 'gray'
-- let g:limelight_conceal_ctermfg = 240
-- let g:limelight_default_coefficient = 0.7
-- -- Number of preceding/following paragraphs to include (default: 0)
-- let g:limelight_paragraph_span = 1
