require('configs.common_fn')
use {
  'declancm/cinnamon.nvim',
  config = function() require('cinnamon').setup() end
}
vim.keymap.set({ 'n', 'x', 'i' }, '<C-u>', "<Cmd>lua require'cinnamon'.Scroll('<C-u>', 1, 1)<CR>")
vim.keymap.set({ 'n', 'x', 'i' }, '<C-d>', "<Cmd>lua require'cinnamon'.Scroll('<C-d>', 1, 1)<CR>")
vim.keymap.set({ 'n', 'x' }, 'k', "<Cmd>lua require'cinnamon'.Scroll('k', 0, 1, 3, 0)<CR>")
vim.keymap.set({ 'n', 'x' }, 'j', "<Cmd>lua require'cinnamon'.Scroll('j', 0, 1, 3, 0)<CR>")
vim.keymap.set({ 'n', 'x' }, 'gg', "<Cmd>lua require'cinnamon'.Scroll('gg', 0, 0, 3)<CR>")
vim.keymap.set({ 'n', 'x' }, 'G', "<Cmd>lua require'cinnamon'.Scroll('G', 0, 1, 3)<CR>")
