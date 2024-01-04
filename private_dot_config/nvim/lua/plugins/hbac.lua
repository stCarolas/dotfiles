return {
  'axkirillov/hbac.nvim',
  config = function ()
		require("hbac").setup({
			autoclose     = true, -- set autoclose to false if you want to close manually
			threshold     = 2, -- hbac will start closing unedited buffers once that number is reached
			close_command = function(bufnr)
				vim.api.nvim_buf_delete(bufnr, {})
			end,
		})
  end
}
