return {
	"stevearc/oil.nvim",
	config = function()
		require("oil").setup({
      keymaps = {
        ["<A-h>"] = "actions.parent"
      },
      skip_confirm_for_simple_edits = true
    })
		vim.keymap.set("n", "<leader>n", function()
			require("oil").open()
		end, { noremap = true, silent = true, nowait = true })
	end,
}
