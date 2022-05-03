require('configs.common_fn')

use 'neovim/nvim-lspconfig'
use 'mfussenegger/nvim-jdtls'
use { "folke/trouble.nvim" }

require("trouble").setup {
	-- your configuration comes here
	-- or leave it empty to use the default settings
	-- refer to the configuration section below
	auto_preview = false,
	auto_open = false, -- automatically open the list when you have diagnostics
	auto_close = false, -- automatically close the list when you have no diagnostics
	auto_fold = false, -- automatically fold a file trouble list at creation
	auto_jump = {},
}

alias('ja','lua vim.lsp.buf.code_action()')
alias('je','lua vim.diagnostic.open_float()')
alias('jd','lua vim.lsp.buf.definition()')
alias('jt','lua vim.lsp.buf.declaration()')

map("<leader>xx", "<cmd>TroubleToggle<cr>")
