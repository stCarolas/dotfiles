local use = require'packer'.use

use {
  "folke/todo-comments.nvim",
  config = function()
    require("todo-comments").setup{
			  signs = false,
			  keywords = {
					TODO = { alt = { "todo"} },
				},
			  highlight = {
					before = "bg", -- "fg" or "bg" or empty
					keyword = "wide", -- "fg", "bg", "wide" or empty. (wide is the same as bg, but will also highlight surrounding characters)
					after = "fg", -- "fg" or "bg" or empty

					pattern = [[.*(KEYWORDS).*]], -- pattern or table of patterns, used for highlightng (vim regex)
					comments_only = true, -- uses treesitter to match keywords in comments only
					max_line_len = 400, -- ignore lines longer than this
				},
			  search = {
					pattern = [[\b(KEYWORDS)\s*:?]], -- ripgrep regex
				},
		}
  end
}
