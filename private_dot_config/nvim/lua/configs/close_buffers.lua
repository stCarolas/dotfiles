require('configs.common_fn')
use 'kazhala/close-buffers.nvim'
require('close_buffers').setup({})
map('<leader>q', "<cmd>lua require'close_buffers'.delete({type = 'this'})<CR>")
map('<leader>Q', "<cmd>lua require'close_buffers'.wipe({type = 'other'})<CR>")
