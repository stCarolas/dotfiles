require('configs.common_fn')

use({
	'kyazdani42/nvim-tree.lua',
	config = function ()
		require'nvim-tree'.setup({
			view = {
				width = 300,
			},
			actions = {
				open_file = {
					quit_on_open = true
				}
			}
		})
	end
})

vim.g.nvim_tree_show_icons = {
	git = 1,
	folders = 1,
	files = 1,
	folder_arrows = 1,
}

map('<leader>n','<cmd> lua require"nvim-tree".find_file(true)<CR>')
