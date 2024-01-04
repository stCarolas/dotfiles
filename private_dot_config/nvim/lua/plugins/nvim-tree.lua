local function setMappings(bufnr)
  local api = require('nvim-tree.api')

  local function opts(desc)
    return {
      desc = 'nvim-tree: ' .. desc,
      buffer = bufnr,
      noremap = true,
      silent = true,
      nowait = true
    }
  end

  api.config.mappings.default_on_attach(bufnr)

  -- override a default
  vim.keymap.set('n', 'q', ':bd<CR>', opts('Refresh'))
end

return {
	{'nvim-tree/nvim-tree.lua', config=function ()
		require("nvim-tree").setup({
			actions = {
				open_file = {
					quit_on_open = true
				}
			},
		  filters = {
				dotfiles = true,
			},
      on_attach = setMappings
		})

		local function opts(desc)
			return { desc = 'nvim-tree: ' .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
		end
		vim.keymap.set('n','<leader>n', function() require'nvim-tree.api'.tree.toggle({ current_window = true, find_file = true }) end, opts('Open') )
	end,
}
}
