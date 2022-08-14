require('configs.common_fn')

use 'kassio/neoterm'

vim.api.nvim_set_keymap('t', '<Esc>', '<C-\\><C-n>', { noremap = true })
map('<leader>e','<cmd>Topen<CR>')
