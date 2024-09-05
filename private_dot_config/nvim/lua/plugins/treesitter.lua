return {
	{
		"nvim-treesitter/nvim-treesitter",
		config = function()
			require("nvim-treesitter.configs").setup({
				ensure_installed = {
					"markdown",
					"tsx",
					"vimdoc",
					"xml",
					"typescript",
					"java",
					"lua",
					"json",
					"bash",
					"yaml",
					"css",
					"html",
					"dockerfile",
					"yuck",
				},
				sync_install = false,

				highlight = {
					enable = true,
					additional_vim_regex_highlighting = false,
				},

				playground = {
					enable = true,
					disable = {},
					updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code
					persist_queries = false, -- Whether the query persists across vim sessions
					keybindings = {
						toggle_query_editor = "o",
						toggle_hl_groups = "i",
						toggle_injected_languages = "t",
						toggle_anonymous_nodes = "a",
						toggle_language_display = "I",
						focus_language = "f",
						unfocus_language = "F",
						update = "R",
						goto_node = "<cr>",
						show_help = "?",
					},
				},

				incremental_selection = {
					enable = true,
					keymaps = {
						init_selection = "<leader>v",
						node_incremental = "<leader>v",
						scope_incremental = "<leader>V",
						node_decremental = false,
					},
				},

				indent = {
					enable = false
				},

				textobjects = {
					select = {
						enable = true,

						-- Automatically jump forward to textobj, similar to targets.vim
						-- lookahead = true,

						keymaps = {
							-- You can use the capture groups defined in textobjects.scm
							["aa"] = "@parameter.outer",
							["ia"] = "@parameter.inner",
							["ac"] = "@block.outer",
							["ic"] = "@block.inner",
							["am"] = "@function.outer",
							["im"] = "@function.inner",
							["ao"] = "@statement.outer",
						},
					},
					move = {
						enable = true,
						-- set_jumps = true, -- whether to set jumps in the jumplist
						goto_next_start = {
							["]m"] = "@function.inner",
							["]a"] = "@parameter.inner",
              ["]s"] = { query = "@scope", query_group = "locals", desc = "Next scope" }
						},
						goto_previous_start = {
							["[m"] = "@function.inner",
							["[a"] = "@parameter.inner",
						},
						goto_next_end = {
							["]M"] = "@function.outer",
							["]A"] = "@parameter.outer",
						},
						goto_previous_end = {
							["[M"] = "@function.outer",
							["[A"] = "@parameter.outer",
						},
					},
				},
			})
		end,
	},
	{
		"nvim-treesitter/nvim-treesitter-textobjects",
	},
}
