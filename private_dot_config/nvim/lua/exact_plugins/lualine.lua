return {
	{
		'nvim-lualine/lualine.nvim',
		config = function()
      local function project()
        local cwd = vim.fn.getcwd()
        return cwd:gsub("/home/stcarolas/",""):gsub("Coding/projects/","")
      end
			require('lualine').setup {
				sections = {
					lualine_a = {'mode'},
					lualine_b = {'diagnostics'},
					lualine_c = {'filename'},
					lualine_x = {'overseer'},
					lualine_y = {'diff'},
					lualine_z = { project }
				},
			}
		end
	}
}
