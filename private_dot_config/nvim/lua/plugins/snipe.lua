return {
	"leath-dub/snipe.nvim",
	config = function()
		require("snipe").setup({
			ui = {
				position = "cursor",
			},
			hints = {
				dictionary = "hjklsadfewcmpgio",
			},
      sort = "last"
		})
		vim.keymap.set({ "n" }, "gt", function()
			require("snipe").open_buffer_menu({ max_path_width = 2 })
		end, { noremap = true })
	end,
	opts = {},
}
