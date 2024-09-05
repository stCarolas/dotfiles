return {
	"folke/flash.nvim",
	event = "VeryLazy",
	config = function()
		-- vim.keymap.set({ "n", "x" }, "/", function()
		-- 	require("flash").jump({ search = { mode = "search" } })
		-- end)
		vim.keymap.set({ "n", "x", "o" }, "s", function()
			require("flash").treesitter()
		end)
		-- vim.keymap.set({ "o" }, "/", function()
		-- 	require("flash").remote({ remote_op = { restore = true } })
		-- end)
		vim.keymap.set({ "o" }, "<S>", function()
			require("flash").treesitter_search()
		end)
	end,
}
