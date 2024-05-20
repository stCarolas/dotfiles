return {
	"stevearc/overseer.nvim",
	config = function()
		require("overseer").setup({
			component_aliases = {
				default = {
					{ "display_duration", detail_level = 2 },
					"on_output_summarize",
					"on_exit_set_status",
					"on_complete_notify",
					"on_complete_dispose",
					{ "on_output_quickfix", open = true, tail = true },
				},
				default_neotest = {
					"on_output_summarize",
					"on_exit_set_status",
					"on_complete_dispose",
				},
			},
		})
		vim.api.nvim_set_keymap("", "<F4>", "<cmd>:OverseerOpen<cr>", {})
		vim.api.nvim_set_keymap("", "<F5>", "<cmd>:OverseerRun<cr>", {})
		vim.api.nvim_create_user_command("OverseerRestartLast", function()
			local overseer = require("overseer")
			local tasks = overseer.list_tasks({ recent_first = true })
			if vim.tbl_isempty(tasks) then
				vim.notify("No tasks found", vim.log.levels.WARN)
			else
				overseer.run_action(tasks[1], "restart")
			end
		end, {})
		vim.api.nvim_set_keymap("", "<F8>", "<cmd>:OverseerRestartLast<cr>", {})
	end,
	opts = {},
}
