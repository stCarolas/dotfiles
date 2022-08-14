local use = require'packer'.use

use 'mfussenegger/nvim-dap'

use {
	'mfussenegger/nvim-dap-python',
	config = function()
		require('dap-python').setup()
	end
}
