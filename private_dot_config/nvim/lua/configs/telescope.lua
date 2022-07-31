require('configs.common_fn')

use({
	'nvim-telescope/telescope.nvim',
	config = function ()
		require('telescope').setup({
			defaults = {
				preview = false,
				layout_config = {
					vertical = { width = 0.95, height = 0.90 },
				},
			},
		})
		require("telescope").load_extension('command_center')
	end
})

map('gf','<cmd>lua require("telescope.builtin").find_files({layout_strategy="vertical"})<cr>')
map('gt','<cmd>lua require("telescope.builtin").buffers({layout_strategy="vertical"})<cr>')
map('gs','<cmd>lua require("telescope.builtin").live_grep({layout_strategy="vertical"})<cr>')
map('gm',"<cmd>lua require'telescope.builtin'.treesitter()<cr>")
