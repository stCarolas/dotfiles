return {
	{
		"neovim/nvim-lspconfig",
		config = function()
			require("lspconfig").ts_ls.setup({})
			require("lspconfig").cssls.setup({})
			require("lspconfig").cssmodules_ls.setup({})
			require("lspconfig").pylsp.setup({})
			require("lspconfig").ansiblels.setup({})
			require("lspconfig").yamlls.setup({})
			require("lspconfig").lua_ls.setup({
				on_init = function(client)
					local path = client.workspace_folders[1].name
					if vim.loop.fs_stat(path .. "/.luarc.json") or vim.loop.fs_stat(path .. "/.luarc.jsonc") then
						return
					end

					client.config.settings.Lua = vim.tbl_deep_extend("force", client.config.settings.Lua, {
						runtime = {
							version = "LuaJIT",
						},
						workspace = {
							checkThirdParty = false,
							library = {
								vim.env.VIMRUNTIME,
							},
						},
					})
				end,
				settings = {
					Lua = {},
				},
			})
			vim.lsp.set_log_level("warn")

			vim.api.nvim_exec("cabbrev ja <cmd>lua vim.lsp.buf.code_action()<CR>", false)
			vim.api.nvim_exec("cabbrev jh <cmd>lua vim.diagnostic.open_float()<CR>", false)
			vim.api.nvim_exec("cabbrev jd <cmd>lua vim.lsp.buf.definition()<CR>", false)
			vim.api.nvim_exec("cabbrev jt <cmd><CR>lua vim.lsp.buf.declaration()", false)
			vim.api.nvim_exec("cabbrev js <cmd><CR>lua vim.lsp.buf.signature_help()", false)
			vim.api.nvim_exec("cabbrev jp <cmd><CR>lua vim.lsp.buf.hover()", false)
		end,
	},
	{
		"j-hui/fidget.nvim",
		config = function()
			require("fidget").setup({
				progress = {
					suppress_on_insert = true,
					ignore_done_already = true,
					display = {
						render_limit = 3,
					},
				},
			})
		end,
	},
	{
		"mfussenegger/nvim-jdtls",
	},
	{
		"folke/trouble.nvim",
		config = function()
			require("trouble").setup({
				auto_preview = false,
				auto_open = false,
				auto_close = true,
				auto_fold = false,
				auto_jump = {},
			})

			vim.diagnostic.config({
				virtual_text = false,
				signs = false,
			})

			vim.api.nvim_set_keymap("n", "<leader>xx", "<cmd>Trouble diagnostics<cr>", { noremap = true })
		end,
	},
	{
		"rachartier/tiny-inline-diagnostic.nvim",
		event = "VeryLazy",
		config = function()
			require("tiny-inline-diagnostic").setup()
		end,
	},
}
