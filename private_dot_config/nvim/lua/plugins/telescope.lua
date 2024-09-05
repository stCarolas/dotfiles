return {
	{
		"nvim-telescope/telescope.nvim",
		config = function()
			require("telescope").setup({
				defaults = {
					preview = false,
					layout_config = {
						vertical = { width = 0.95, height = 0.90 },
					},
          mappings = {
            i = {
              ["<C-e>"] = require("telescope.actions").close
            },
          },
				},
        pickers = {
          find_files = {
            theme =  "ivy",
            find_command  = {"rg","--files"}
          },
          live_grep  =  {
            theme = "ivy"
          },
          treesitter  =  {
            theme = "ivy"
          }
        },
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_ivy({}),
					},
				},
			})
			require("telescope").load_extension("ui-select")
			vim.api.nvim_set_keymap(
        "n",
				"<M-o>",
				'<cmd>lua require("telescope.builtin").find_files({})<cr>',
        {}
			)
			vim.api.nvim_set_keymap(
        "n",
				"gs",
				'<cmd>lua require("telescope.builtin").live_grep({})<cr>',
        {}
			)
			vim.keymap.set("n", "gm", function()
				require("telescope.builtin").treesitter()
			end,{})
		end,
	},
	{ "nvim-telescope/telescope-ui-select.nvim" },
}
