require('configs.common_fn')

use 'nvim-telescope/telescope.nvim'
require('telescope').setup({
  defaults = {
    layout_config = {
      vertical = { width = 0.95 }
    },
  },
})

map('gf','<cmd>Telescope find_files<cr>')
map('gt','<cmd>Telescope buffers<cr>')
map('gm',"<cmd>lua require'telescope.builtin'.treesitter()<cr>")
