local use = require'packer'.use

use({ 'L3MON4D3/LuaSnip',
	config = function ()

		local function get_buffer_name(_,_,_)
			local path = vim.api.nvim_buf_get_name(0)
			return string.match(path:match "%a+%.java", "^%a+")
		end

		local function get_java_package()
			local path = string.gsub(vim.api.nvim_buf_get_name(0), [[.*/src/main/java/(.*)/.*.java]], "%1")
			local package = string.gsub(path, '/', '.')
			return package
		end

		local ls = require"luasnip"
		local s = ls.snippet
		local t = ls.text_node
		local i = ls.insert_node
		local c = ls.choice_node
		local f = ls.function_node

		ls.add_snippets("java", {
			s("type", {
				t("package "),f(get_java_package, {}, {}), t(";"),
				t({"",""}),
				t({"","public "}),c(1, {t("class"),t("interface")}),t(" "),f(get_buffer_name, {},{}),
				t({ " {", "\t" }),
				i(0),
				t({ "", "}" }),
			})
		})

		ls.add_snippets("java", {
			s("serialversion", {
				t("private static final long serialVersionUID = 1L;"),
			})
		})

		ls.add_snippets("java", {
			s("test", {
				t({"@Test","public void test"}),i(1),t({"() {","    "}),
				i(0),
				t({"","}"})
			})
		})

		ls.add_snippets("java", {
			s("aseq", {
				t({"assertEquals(expected, actual);"})
			})
		})

		ls.add_snippets("java", {
			s("build", {
				t({"builder()"}), i(0), t({".build()"}),
			})
		})
	end
})


vim.api.nvim_set_keymap('i', '<C-j>','<cmd> lua require"luasnip".expand_or_jump()<CR>', { noremap = true })
vim.api.nvim_set_keymap("i", "<C-n>", "<Plug>luasnip-next-choice", {})
vim.api.nvim_set_keymap("s", "<C-n>", "<Plug>luasnip-next-choice", {})
vim.api.nvim_set_keymap("i", "<C-p>", "<Plug>luasnip-prev-choice", {})
vim.api.nvim_set_keymap("s", "<C-p>", "<Plug>luasnip-prev-choice", {})
