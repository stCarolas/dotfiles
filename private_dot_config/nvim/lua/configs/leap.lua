local use = require'packer'.use

use {
	'ggandor/leap.nvim',
	config = function () end
}

use {
	 'ggandor/leap-ast.nvim',
	config = function ()
		vim.keymap.set({'n', 'x', 'o'}, '<leader>s', function() require'leap-ast'.leap() end, {})
	end
}
