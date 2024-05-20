return { 'EdenEast/nightfox.nvim',
	config = function ()
		vim.cmd 'colorscheme nightfox'
		vim.cmd 'hi Hlargs gui=bold'
    -- vim.api.nvim_set_hl(0, "String", { gui="italic" })
	end
}
