require('configs.common_fn')

use({
	'kazhala/close-buffers.nvim',
	config = function ()
		require('close_buffers').setup({})
	end
})

map('<leader>q', "<cmd>lua require'close_buffers'.delete({type = 'this'})<CR>")
map('<leader>Q', "<cmd>lua require'close_buffers'.wipe({type = 'other'})<CR>")
