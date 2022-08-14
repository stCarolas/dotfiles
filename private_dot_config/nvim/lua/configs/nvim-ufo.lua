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
	end
}

vim.o.foldlevel = 99
vim.o.foldlevelstart = -1
