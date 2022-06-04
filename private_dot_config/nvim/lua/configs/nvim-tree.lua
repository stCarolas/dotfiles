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
			},
			renderer = {
				icons = {
					show = {
						file = true,
						folder = true,
						folder_arrow = true,
						git = true,
					},
				}
			}
		})
	end
})

map('<leader>n','<cmd> lua require"nvim-tree".find_file(true)<CR>')
