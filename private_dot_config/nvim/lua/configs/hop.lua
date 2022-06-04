require('configs.common_fn')

use({
	'phaazon/hop.nvim',
	config = function ()
		require('hop').setup({})
	end
})

vim.api.nvim_set_keymap('n', 'f', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = false, inclusive_jump = false })<cr>", {})
vim.api.nvim_set_keymap('v', 'f', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = false, inclusive_jump = false })<cr>", {})
vim.api.nvim_set_keymap('o', 'f', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = false, inclusive_jump = true })<cr>", {})
vim.api.nvim_set_keymap('n', 'F', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = false, inclusive_jump = false })<cr>", {})
vim.api.nvim_set_keymap('v', 'F', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = false, inclusive_jump = false })<cr>", {})
vim.api.nvim_set_keymap('o', 'F', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = false, inclusive_jump = true })<cr>", {})
vim.api.nvim_set_keymap('', 't', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true })<cr>", {})
vim.api.nvim_set_keymap('', 'T', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true })<cr>", {})
vim.api.nvim_set_keymap('n', '<leader>w', "<cmd> lua require'hop'.hint_words({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR})<cr>", {})
vim.api.nvim_set_keymap('v', '<leader>w', "<cmd> lua require'hop'.hint_words({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR})<cr>", {})
vim.api.nvim_set_keymap('o', '<leader>w', "<cmd> lua require'hop'.hint_words({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR})<cr>", {})
vim.api.nvim_set_keymap('n', '<leader>b', "<cmd> lua require'hop'.hint_words()<cr>", {})
vim.api.nvim_set_keymap('v', '<leader>b', "<cmd> lua require'hop'.hint_words()<cr>", {})
vim.api.nvim_set_keymap('o', '<leader>b', "<cmd> lua require'hop'.hint_words()<cr>", {})
vim.api.nvim_set_keymap('n', '<leader>j', "<cmd> lua require'hop'.hint_lines({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR})<cr>", {})
vim.api.nvim_set_keymap('v', '<leader>j', "<cmd> lua require'hop'.hint_lines({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR})<cr>", {})
vim.api.nvim_set_keymap('o', '<leader>j', "<cmd> lua require'hop'.hint_lines({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR})<cr>", {})
vim.api.nvim_set_keymap('n', '<leader>k', "<cmd> lua require'hop'.hint_lines({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR})<cr>", {})
vim.api.nvim_set_keymap('v', '<leader>k', "<cmd> lua require'hop'.hint_lines({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR})<cr>", {})
vim.api.nvim_set_keymap('o', '<leader>k', "<cmd> lua require'hop'.hint_lines({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR})<cr>", {})
