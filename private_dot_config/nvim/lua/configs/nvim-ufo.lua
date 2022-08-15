local use = require'packer'.use
use {
	'kevinhwang91/nvim-ufo',
	requires = 'kevinhwang91/promise-async',
	config = function()
		require('ufo').setup({
			provider_selector = function(_, _)
					return {'treesitter', 'indent'}
			end,
			enable_fold_end_virt_text = true
		})
		vim.keymap.set('n', 'zR', require('ufo').openAllFolds)
		vim.keymap.set('n', 'zM', require('ufo').closeAllFolds)
		vim.keymap.set('n', 'zr', require('ufo').openAllFolds)
		vim.keymap.set('n', 'zm', require('ufo').closeFoldsWith) -- closeAllFolds == closeFoldsWith(0)
		vim.keymap.set('n', 'K', function()
				local winid = require('ufo').peekFoldedLinesUnderCursor()
				if not winid then
						vim.lsp.buf.hover()
				end
		end)
	end
}

vim.o.foldmethod = 'manual'
vim.o.foldlevel = 99
vim.o.foldlevelstart = -1
