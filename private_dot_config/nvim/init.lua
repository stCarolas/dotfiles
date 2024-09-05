vim.opt.shada = ""
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.expandtab = true
vim.opt.cursorline = true
vim.opt.number = true
vim.opt.termguicolors = true
vim.opt.cmdheight = 0
vim.opt.laststatus = 3
vim.opt.splitkeep = "topline"
vim.opt.foldlevel = 99
vim.opt.foldlevelstart = 90
vim.opt.clipboard = "unnamedplus"
vim.opt.showtabline = 0

vim.g.neoterm_shell = "/usr/bin/zsh"
vim.g.mapleader = "m"

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:non	e",
		"https://github.com/folke/lazy.nvim.git",
	"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins", {
	change_detection = {
		notify = false,
	},
})

vim.api.nvim_set_keymap("n", ";", ":", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>e", ":ToggleTerm<CR>", { noremap = true })
vim.api.nvim_set_keymap("t", "<Esc>", "<C-\\><C-n>", { noremap = true })
vim.api.nvim_set_keymap("n", "J", ":bn<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "K", ":bp<CR>", { noremap = true })

vim.api.nvim_create_autocmd("FocusLost", {
	callback = function()
		vim.cmd("stopinsert")
	end,
})

-- todo AckslD/nvim-neoclip.lua
-- todo https://github.com/tversteeg/registers.nvim
-- todo https://github.com/rasulomaroff/reactive.nvim
