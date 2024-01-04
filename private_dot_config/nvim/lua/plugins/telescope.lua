return {
	{
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
					require("telescope.themes").get_dropdown { }
				}
			}
		})
		-- require("telescope").load_extension('command_center')
		require("telescope").load_extension("ui-select")
		vim.api.nvim_set_keymap('','<M-o>','<cmd>lua require("telescope.builtin").find_files({layout_strategy="vertical"})<cr>', {})
		vim.api.nvim_set_keymap('','gt','<cmd>lua require("telescope.builtin").buffers({layout_strategy="vertical"})<cr>', {})
		vim.api.nvim_set_keymap('','gs','<cmd>lua require("telescope.builtin").live_grep({layout_strategy="vertical"})<cr>', {})
		vim.api.nvim_set_keymap('','gm',"<cmd>lua require'telescope.builtin'.treesitter()<cr>", {})

	end
},
  {'nvim-telescope/telescope-ui-select.nvim' }
}
