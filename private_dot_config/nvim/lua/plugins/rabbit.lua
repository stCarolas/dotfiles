return {
	"voxelprismatic/rabbit.nvim",
	config = function()
		require("rabbit").setup({ {} }) -- Detailed below
		-- vim.api.nvim_set_keymap("", "gt", "<cmd>Rabbit<cr>", {})
	end,
}
