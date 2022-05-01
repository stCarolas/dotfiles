require('configs.common_fn')

vim.api.nvim_set_keymap('t', '<Esc>', '<C-\\><C-n>', { noremap = true })
map('<leader>e','<cmd>term zsh<CR>')
