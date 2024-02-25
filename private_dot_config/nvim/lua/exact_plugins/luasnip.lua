return {
	"L3MON4D3/LuaSnip",
	config = function()
		local luasnip = require("luasnip")

		vim.keymap.set({ "i" }, "<C-j>", function()
			require("luasnip").expand_or_jump()
		end, { noremap = true })

		vim.keymap.set({ "i", "s" }, "<A-n>", function()
			if luasnip.choice_active() then
				luasnip.change_choice(1)
			end
		end, { silent = true })

		require("luasnip.loaders.from_lua").load({ paths = "~/.config/nvim/snippets" })
	end,
}
