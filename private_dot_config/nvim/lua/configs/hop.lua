require('configs.common_fn')

use({
	'phaazon/hop.nvim',
	config = function ()
		require('hop').setup({


		})
	end
})

			vim.api.nvim_set_keymap('', 'f', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true })<cr>", {})
			vim.api.nvim_set_keymap('', 'F', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = false })<cr>", {})
			vim.api.nvim_set_keymap('', 't', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true, hint_offset = -1 })<cr>", {})
			vim.api.nvim_set_keymap('', 'T', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true, hint_offset = -1 })<cr>", {})

			vim.api.nvim_set_keymap('n', '<leader>w', "<cmd> lua require'hop'.hint_words({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR})<cr>", {})
			vim.api.nvim_set_keymap('v', '<leader>w', "<cmd> lua require'hop'.hint_words({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR})<cr>", {})
			vim.api.nvim_set_keymap('o', '<leader>w', "<cmd> lua require'hop'.hint_words({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, hint_offset = -1 })<cr>", {})
			vim.api.nvim_set_keymap('', '<leader>b', "<cmd> lua require'hop'.hint_words({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR})<cr>", {})

			vim.api.nvim_set_keymap('', '<leader>j', "<cmd> lua require'hop'.hint_lines({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR})<cr>", {})
			vim.api.nvim_set_keymap('', '<leader>k', "<cmd> lua require'hop'.hint_lines({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR})<cr>", {})
