local use =require'packer'.use

use {
  "gfeiyou/command-center.nvim",
	config = function ()
		local command_center = require("command_center")
		local context_actions = require("configs.context-actions")
		command_center.add({
			{
				-- If no keys are specified, no keybindings will be displayed nor registered
				desc = "Switch class/test",
				cmd = context_actions.switch,
				category = "java",
			}
		})
		command_center.add({
			{
				-- If no keys are specified, no keybindings will be displayed nor registered
				desc = "Run mvn verify",
				cmd = context_actions.mvnverify,
				category = "java",
			}
		})
	end
}

vim.cmd "nnoremap <F1> <cmd>Telescope command_center category=java<cr>"
