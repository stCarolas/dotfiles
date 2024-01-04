return {
	{
		'nvim-lualine/lualine.nvim',
		config = function()
			require('lualine').setup {
				sections = {
					lualine_a = {'mode'},
					lualine_b = {'diagnostics'},
					lualine_c = {'filename'},
					lualine_x = {'overseer'},
					lualine_y = {'diff'},
					lualine_z = {'branch'}
				},
			}
		end
	}
}
