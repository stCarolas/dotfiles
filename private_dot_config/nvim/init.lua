require('plugins')
require('stock_options')

use = require'packer'.use

local files = io.popen('find "$HOME"/.config/nvim/lua/configs -type f')
for file in files:lines() do
	local req_file = file:gmatch('%/lua%/(.+).lua$'){0}:gsub('/', '.')
	status_ok, _ = pcall(require, req_file)
	if not status_ok then
		vim.notify('Failed loading ' .. req_file, vim.log.levels.ERROR)
	end
end

use 'lukas-reineke/indent-blankline.nvim'
use 'APZelos/blamer.nvim'
use 'gpanders/editorconfig.nvim'

use 'mfussenegger/nvim-dap'
use 'github/copilot.vim'

use 'yamatsum/nvim-nonicons'
use {
	'kevinhwang91/nvim-hlslens',
	config = function() require('hlslens').setup({
		nearest_float_when = 'always'
	}) end
}
use {
	'j-hui/fidget.nvim',
	config = function() require('fidget').setup() end
}
use 'folke/lsp-colors.nvim'
use 'dstein64/nvim-scrollview'
use {
	"luukvbaal/stabilize.nvim",
	config = function() require("stabilize").setup() end
}

use {
	'mfussenegger/nvim-dap-python',
	config = function()
		require('dap-python').setup()
	end
}
