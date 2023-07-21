local use = require'packer'.use

use ({ 'SidOfc/carbon.nvim',
	config = function ()
		require'carbon'.setup({actions = { edit = 'o', create = 'a'}})
		vim.api.nvim_set_keymap('n','<leader>n', '<cmd>Carbon!<CR>', { noremap = true })
	end
})

