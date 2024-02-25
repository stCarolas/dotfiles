return {
	"stevearc/oil.nvim",
	config = function()
		require("oil").setup({
      keymaps = {
        ["<A-h>"] = "actions.parent"
      }
    })
		vim.keymap.set("n", "<leader>n", function()
			require("oil").open()
		end, { noremap = true, silent = true, nowait = true })
	end,
}
