require('configs.common_fn')

local opt = vim.opt             -- global/buffer/windows-scoped options

opt.shiftwidth = 2
opt.tabstop = 2
opt.cursorline = true
opt.number = true
opt.termguicolors = true

vim.g.mapleader = "m"

cmd 'set guicursor=n-i-ci:ver30-Cursor-blinkwait300-blinkon200-blinkoff150'
map(';',':')
