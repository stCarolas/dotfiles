require('configs.common_fn')
use({
	'nvim-treesitter/nvim-treesitter',
	config = function ()
		require'nvim-treesitter.configs'.setup {
			-- A list of parser names, or "all"
			ensure_installed = { "java", "lua" },

			-- Install parsers synchronously (only applied to `ensure_installed`)
			sync_install = false,

			highlight = {
				enable = true,
				additional_vim_regex_highlighting = false,
			},
		}
	end
})
