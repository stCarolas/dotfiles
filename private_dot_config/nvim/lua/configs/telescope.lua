require('configs.common_fn')
local use = require'packer'.use

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
			 extensions = {
				["ui-select"] = {
					require("telescope.themes").get_dropdown {
						-- even more opts
					}

					-- pseudo code / specification for writing custom displays, like the one
					-- for "codeactions"
					-- specific_opts = {
					--   [kind] = {
					--     make_indexed = function(items) -> indexed_items, width,
					--     make_displayer = function(widths) -> displayer
					--     make_display = function(displayer) -> function(e)
					--     make_ordinal = function(e) -> string
					--   },
					--   -- for example to disable the custom builtin "codeactions" display
					--      do the following
					--   codeactions = false,
					-- }
				}
			}
		})
		require("telescope").load_extension('command_center')
		require("telescope").load_extension("ui-select")
	end
})
use {'nvim-telescope/telescope-ui-select.nvim' }

map('<M-o>','<cmd>lua require("telescope.builtin").find_files({layout_strategy="vertical"})<cr>')
map('gt','<cmd>lua require("telescope.builtin").buffers({layout_strategy="vertical"})<cr>')
map('gs','<cmd>lua require("telescope.builtin").live_grep({layout_strategy="vertical"})<cr>')
map('gm',"<cmd>lua require'telescope.builtin'.treesitter()<cr>")
