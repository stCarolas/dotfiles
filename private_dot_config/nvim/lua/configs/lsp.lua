require('configs.common_fn')

use {
	'neovim/nvim-lspconfig',
	config = function ()
		require'lspconfig'.tsserver.setup{}
		require'lspconfig'.cssls.setup{}
		require'lspconfig'.cssmodules_ls.setup{}
		require'lspconfig'.lua_ls.setup{
			settings = {
        Lua = {
					diagnostics = {
						globals = { 'vim' }
					},
					hint = {
						enable = true,
					},
        }
			},
			on_attach = function(c, b)
				require'inlay-hints'.on_attach(c, b)
			end,
		}
		require'lspconfig'.pylsp.setup{}
	end
}

use {
	'j-hui/fidget.nvim',
	tag = 'legacy',
	config = function() require('fidget').setup() end
}

use 'mfussenegger/nvim-jdtls'
use ({ "folke/trouble.nvim",

	config = function ()
		require("trouble").setup {
			auto_preview = false,
			auto_open = false,
			auto_close = true,
			auto_fold = false,
			auto_jump = {},
		}
	end
})

alias('ja','lua vim.lsp.buf.code_action()')
alias('jh','lua vim.diagnostic.open_float()')
alias('jd','lua vim.lsp.buf.definition()')
alias('jt','lua vim.lsp.buf.declaration()')

map("<leader>xx", "<cmd>TroubleToggle<cr>")

vim.diagnostic.config({
  virtual_text = true,
	signs = false,
})

use({
	'simrat39/inlay-hints.nvim',
	config = function ()
		require("inlay-hints").setup()
	end
})
vim.lsp.set_log_level("info")
