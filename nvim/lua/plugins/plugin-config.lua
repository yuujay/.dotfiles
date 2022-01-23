vim.env.FZF_DEFAULT_COMMAND = 'ag -g ""'
vim.g.airline_powerline_fonts = 1

-- `bufferline`
vim.opt.termguicolors = true
require('bufferline').setup({
	options = {
		always_show_bufferline = true,
		diagnostics = 'vim_lsp',
		persist_buffer_sort = true,
		separator_style = 'thin'
	}
})

-- `nvim-treesitter`
require('nvim-treesitter.configs').setup({
    highlight =  {
        enable = true,
    },
})

-- LIMELIGHT CONFIGS USED IN OLD VIM CONFIGS
-- -- Limelight - Turn this on when you want limelight to be enabled by default.
-- -- autocmd VimEnter * Limelight

-- -- Color name (:help cterm-colors) or ANSI code
-- let g:limelight_conceal_ctermfg = 'gray'
-- let g:limelight_conceal_ctermfg = 240
-- let g:limelight_default_coefficient = 0.7
-- -- Number of preceding/following paragraphs to include (default: 0)
-- let g:limelight_paragraph_span = 1
