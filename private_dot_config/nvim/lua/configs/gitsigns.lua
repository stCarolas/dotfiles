require('configs.common_fn')
use({
	'lewis6991/gitsigns.nvim',
	config = function ()
		require('gitsigns').setup()
	end
})
