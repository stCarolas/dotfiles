return {
	"stevearc/conform.nvim",
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				lua = { "stylua" },
				css = { "stylelint" },
				java = { "prettier" },
				javascript = { "prettier" },
				typescriptreact = { "prettier" },
        html = { "djlint" }
			},
		})
		vim.keymap.set("n", "<space>f", require("conform").format)
	end,
}
