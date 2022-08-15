local use = require'packer'.use
use 'stCarolas/boo-colorscheme-nvim'
use { 'm-demare/hlargs.nvim',
	config = function()
		require('hlargs').setup({
			color = '#9acccc',
		})
	end
}
use 'folke/lsp-colors.nvim'
use 'lukas-reineke/indent-blankline.nvim'
use 'yamatsum/nvim-nonicons'
use { "luukvbaal/stabilize.nvim",
	config = function()
		require("stabilize").setup()
	end
}
use { 'lcheylus/overlength.nvim',
	config = function()
		require('overlength').setup({
			enabled = true,
			bg = '#3B1010',
		})
	end
}

pcall(vim.cmd,'colorscheme boo')
vim.cmd 'hi Hlargs gui=bold'
vim.cmd 'hi DiagnosticUnderlineInfo gui=italic'
vim.cmd 'hi DiffAdd guibg=#114020'
vim.cmd 'hi DiffDelete guibg=#653157'

