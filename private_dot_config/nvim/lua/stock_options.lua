require('configs.common_fn')

vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.cursorline = true
vim.opt.number = true
vim.opt.termguicolors = true

vim.g.do_filetype_lua = 1
vim.g.did_load_filetypes = 0
vim.g.mapleader = "m"
vim.g.neoterm_shell = "/usr/bin/zsh"

-- cmd 'set guicursor=n-i-ci:ver30-Cursor-blinkwait300-blinkon200-blinkoff150'
cmd 'set clipboard+=unnamedplus'
cmd 'set laststatus=3'
map(';',':')
