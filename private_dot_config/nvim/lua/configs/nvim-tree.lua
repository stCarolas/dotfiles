local use = require'packer'.use

use {
  'nvim-tree/nvim-tree.lua',
	config = function ()
		require("nvim-tree").setup({
			actions = {
				open_file = {
					quit_on_open = true
				}
			},
		  filters = {
				dotfiles = true,
			},
		})

		local function opts(desc)
			return { desc = 'nvim-tree: ' .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
		end
		vim.keymap.set('n','<leader>n', function() require'nvim-tree.api'.tree.toggle({ current_window = true, find_file = true }) end, opts('Open') )
	end,
  requires = {
    'nvim-tree/nvim-web-devicons', -- optional
  },
}
