require('configs.common_fn')
use {
  'declancm/cinnamon.nvim',
	config = function() require('cinnamon').setup() end
}
vim.keymap.set({ 'n', 'x', 'i' }, '<C-u>', "<Cmd>lua Scroll('<C-u>', 1, 1)<CR>")
vim.keymap.set({ 'n', 'x', 'i' }, '<C-d>', "<Cmd>lua Scroll('<C-d>', 1, 1)<CR>")
vim.keymap.set({ 'n', 'x' }, 'k', "<Cmd>lua Scroll('k', 0, 1, 3, 0)<CR>")
vim.keymap.set({ 'n', 'x' }, 'j', "<Cmd>lua Scroll('j', 0, 1, 3, 0)<CR>")
vim.keymap.set({ 'n', 'x' }, 'gg', "<Cmd>lua Scroll('gg', 0, 0, 3)<CR>")
vim.keymap.set({ 'n', 'x' }, 'G', "<Cmd>lua Scroll('G', 0, 1, 3)<CR>")
