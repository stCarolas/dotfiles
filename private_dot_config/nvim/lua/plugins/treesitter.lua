return {
	{
	'nvim-treesitter/nvim-treesitter',
	config = function ()
		require'nvim-treesitter.configs'.setup {
			ensure_installed = { "xml","typescript","java","lua","json","bash","yaml","css","html" },
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
					toggle_query_editor = 'o',
					toggle_hl_groups = 'i',
					toggle_injected_languages = 't',
					toggle_anonymous_nodes = 'a',
					toggle_language_display = 'I',
					focus_language = 'f',
					unfocus_language = 'F',
					update = 'R',
					goto_node = '<cr>',
					show_help = '?',
				},
			},

			incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = "gnn",
					node_incremental = "grn",
					scope_incremental = "grc",
					node_decremental = "grm",
				},
			},

			indent = {
				enable = true
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
						["af"] = "@function.outer",
						["if"] = "@function.inner",
					},
				},
				move = {
					enable = true,
					-- set_jumps = true, -- whether to set jumps in the jumplist
					goto_next_start = {
						["]m"] = "@function.outer",
						["]a"] = "@parameter.inner",
					},
					goto_previous_start = {
						["[m"] = "@function.outer",
						["[a"] = "@parameter.inner",
					},
					goto_next_end = {
						["]M"] = "@function.outer",
						["]A"] = "@parameter.inner",
					},
					goto_previous_end = {
						["[M"] = "@function.outer",
						["[A"] = "@parameter.inner",
					},
				},
			},
		}
	end
},
{
	'nvim-treesitter/nvim-treesitter-textobjects'
}
}
