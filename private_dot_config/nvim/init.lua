require('plugins')
require('stock_options')

local use = require'packer'.use

local files = io.popen('find "$HOME"/.config/nvim/lua/configs -type f')
for file in files:lines() do
	local req_file = file:gmatch('%/lua%/(.+).lua$'){0}:gsub('/', '.')
	local status_ok, _ = pcall(require, req_file)
	if not status_ok then
		vim.notify('Failed loading ' .. req_file, vim.log.levels.ERROR)
	end
end

use 'gpanders/editorconfig.nvim'

use {
	'kevinhwang91/nvim-hlslens',
	config = function() require('hlslens').setup({
		nearest_float_when = 'always',
		calm_down = true
	}) end
}
use 'dstein64/nvim-scrollview'

-- use 'github/copilot.vim'

-- use {
-- 	'glepnir/mcc.nvim',
-- 	config = function()
-- 		require('mcc').setup({
-- 			java = {
-- 					{'-','->','-'}
-- 				}
-- 		})
-- 	end
-- }

use "folke/lua-dev.nvim"
