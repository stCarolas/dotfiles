map = function(lhs, rhs)
    vim.api.nvim_set_keymap('n', lhs, rhs, { noremap = true })
end

alias = function(lhs, rhs)
	vim.api.nvim_exec("cabbrev " .. lhs .. " <cmd>" .. rhs .. "<CR>", false)
end

cmd = vim.cmd             -- execute Vim commands
exec = vim.api.nvim_exec  -- execute Vimscript
