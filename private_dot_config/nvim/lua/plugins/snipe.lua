return {
	"leath-dub/snipe.nvim",
	config = function()
		require("snipe").setup({
			ui = {
				position = "cursor",
				persist_tags = false,
			},
			hints = {
				dictionary = "hjklsadfewcmpgio",
			},
			sort = "last",
			persist_tags = false,
		})
		vim.keymap.set({ "n" }, "gt", function()
			require("snipe").open_buffer_menu({ max_path_width = 2 })
		end, { noremap = true })
	end,
	opts = {},
}
