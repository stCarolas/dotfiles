return {
	"Exafunction/codeium.vim",
	event = "BufEnter",
	config = function()
		vim.g.codeium_disable_bindings = 1
		vim.keymap.set("i", "<S-Tab>", function()
			return vim.fn["codeium#Accept"]()
		end, { expr = true, silent = true })
	end,
}
