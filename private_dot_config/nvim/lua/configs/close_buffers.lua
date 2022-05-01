require('configs.common_fn')
require('close_buffers').setup({})
map('<leader>q', "<cmd>lua require'close_buffers'.delete({type = 'this'})<CR>")
