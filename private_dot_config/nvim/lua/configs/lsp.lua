require('configs.common_fn')

use {
	'neovim/nvim-lspconfig',
	config = function ()
		require'lspconfig'.sumneko_lua.setup{
			settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim' }
            }
        }
			}
		}
		require'lspconfig'.pylsp.setup{}
	end
}

use 'mfussenegger/nvim-jdtls'
use ({ "folke/trouble.nvim",
	config = function ()
		require("trouble").setup {
			-- your configuration comes here
			-- or leave it empty to use the default settings
			-- refer to the configuration section below
			auto_preview = false,
			auto_open = false, -- automatically open the list when you have diagnostics
			auto_close = true, -- automatically close the list when you have no diagnostics
			auto_fold = false, -- automatically fold a file trouble list at creation
			auto_jump = {},
		}
	end
})

use({
  "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
  config = function()
    require("lsp_lines").setup()

		-- local orig_virtual_lines_handler = vim.diagnostic.handlers.virtual_lines
  --
		-- vim.diagnostic.handlers.virtual_lines = {
		-- 		show = function(ns, bufnr, _, opts)
		-- 			local diagnostics = vim.diagnostic.get(bufnr, { severity = {min=vim.diagnostic.severity.WARN} })
		-- 			orig_virtual_lines_handler.show(ns, bufnr, diagnostics, opts)
		-- 		end
		-- }

  end,
})

alias('ja','lua vim.lsp.buf.code_action()')
alias('jh','lua vim.diagnostic.open_float()')
alias('jd','lua vim.lsp.buf.definition()')
alias('jt','lua vim.lsp.buf.declaration()')

map("<leader>xx", "<cmd>TroubleToggle<cr>")

vim.diagnostic.config({
  virtual_text = false,
	signs = false,
})
