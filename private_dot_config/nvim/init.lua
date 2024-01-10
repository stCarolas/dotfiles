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
vim.opt.cmdheight=0
vim.opt.laststatus=3
vim.opt.splitkeep="topline"

vim.g.neoterm_shell = "/usr/bin/zsh"

vim.cmd 'set clipboard+=unnamedplus'

vim.api.nvim_set_keymap('n',';',':', { noremap = true })
vim.api.nvim_set_keymap('t', '<Esc>', '<C-\\><C-n>', { noremap = true })

vim.g.mapleader = "m"
vim.o.foldlevel = 99
vim.o.foldlevelstart = 90

require("lazy").setup("plugins")

-- todo потыкать AckslD/nvim-neoclip.lua
-- todo потыкать https://github.com/tversteeg/registers.nvim
