return { 'sbdchd/neoformat',
	config = function()
		vim.api.nvim_set_keymap('n', '<space>f', "<cmd>Neoformat<cr>", { noremap = true,silent = true })
	end
}

