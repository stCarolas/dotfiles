return {
	{
		"nvim-lualine/lualine.nvim",
		config = function()
			local function project()
				local cwd = vim.fn.getcwd()
				return cwd:gsub("/home/stcarolas/", ""):gsub("Coding/projects/", "")
			end
			local function buffernumber()
				return vim.api.nvim_get_current_buf()
			end
			require("lualine").setup({
				options = {
					theme = "onedark",
					component_separators = { left = ":", right = "" },
          section_separators = { left = '', right = '' },
				},
				extensions = { "toggleterm" },
				sections = {
					lualine_a = {
						{
							"mode",
							fmt = function(str)
								return str:sub(1, 1)
							end,
						},
					},
					lualine_b = { "diagnostics" },
					lualine_c = { buffernumber, "filename" },
					lualine_x = { "toggleterm", "overseer" },
					lualine_y = { "diff" },
					lualine_z = { project },
				},
			})
		end,
	},
}
