require('configs.common_fn')

use 'sindrets/diffview.nvim'

use ({
	'TimUntersberger/neogit',
	config = function ()
		require'neogit'.setup({
			integrations = {
				diffview = true
			},
		})
	end
})

use({
	'lewis6991/gitsigns.nvim',
	config = function ()
		require('gitsigns').setup({
			signcolumn = false,  -- Toggle with `:Gitsigns toggle_signs`
			numhl      = true, -- Toggle with `:Gitsigns toggle_numhl`
		})
	end
})

alias("gst", "lua require'neogit'.open({ kind = 'replace' })")
