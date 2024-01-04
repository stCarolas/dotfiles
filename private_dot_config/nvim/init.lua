local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.expandtab = true
vim.opt.cursorline = true
vim.opt.number = true
vim.opt.termguicolors = true

vim.g.mapleader = "m"
vim.g.neoterm_shell = "/usr/bin/zsh"

vim.cmd 'set clipboard+=unnamedplus'
vim.cmd 'set laststatus=3'
vim.cmd 'set splitkeep=topline'

vim.api.nvim_set_keymap('n',';',':', { noremap = true })
vim.api.nvim_set_keymap('n','J','<cmd>bnext<cr>', { noremap = true })
vim.api.nvim_set_keymap('n','K','<cmd>bprev<cr>', { noremap = true })
vim.api.nvim_set_keymap('t', '<Esc>', '<C-\\><C-n>', { noremap = true })

vim.g.mapleader = "m"
vim.o.foldlevel = 99
vim.o.foldlevelstart = 90

require("lazy").setup("plugins")

-- resize splits when Vim is resized
vim.api.nvim_create_autocmd('VimResized', { command = 'horizontal wincmd =' })
