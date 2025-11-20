return {
	{
		"nvim-lualine/lualine.nvim",
		config = function()
			local function project()
				local cwd = vim.fn.getcwd()
				return cwd:gsub("/home/stcarolas/", ""):gsub("Coding/projects/", "")
			end
			local function isRecording()
				local reg = vim.fn.reg_recording()
				if reg == "" then
					return ""
				end -- not recording
				return "REC:" .. reg
			end
			local theme = require("lualine.themes.onedark")
			theme.normal.c.bg = "#192330"

			require("lualine").setup({
				options = {
					theme = theme,
					component_separators = { left = ":", right = "" },
					section_separators = { left = "", right = "" },
				},
				extensions = { "toggleterm" },
				sections = {
					lualine_a = {
            "filename"
						-- {
						-- 	"mode",
						-- 	fmt = function(str)
						-- 		return str:sub(1, 1)
						-- 	end,
						-- },
					},
					lualine_b = { { "diagnostics", color = { bg = "#192330" } } },
					lualine_c = { { color = { bg = "#192330" } } },
					lualine_x = {
						{ "toggleterm", color = { bg = "#192330" } },
						{ "overseer", color = { bg = "#192330" } },
					},
					lualine_y = { isRecording, color = { bg = "#192330" } },
					lualine_z = { { project, color = { fg = "#81b29a", bg = "#192330", gui = "italic,bold" } } },
				},
			})
		end,
	},
}
