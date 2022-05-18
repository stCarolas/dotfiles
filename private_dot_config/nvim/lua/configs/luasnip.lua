require('configs.common_fn')

local function get_buffer_name(_,_,_)
	local path = vim.api.nvim_buf_get_name(0)
	return string.match(path:match "%a+%.java", "^%a+")
end

use({
	'L3MON4D3/LuaSnip',
	config = function ()
		local ls = require"luasnip"
		local s = ls.snippet
		local t = ls.text_node
		local i = ls.insert_node
		local f = ls.function_node

		ls.add_snippets("java", {
			s("class", {
				t("public class "), f(get_buffer_name, {},{}), t({" {","    ","    "}),
				i(0),
				t({"","    ","}"})
			})
		})

		ls.add_snippets("java", {
			s("test", {
				t({"@Test","public void test"}),i(1),t({"() {","    "}),
				i(0),
				t({"","}"})
			})
		})
	end
})


vim.api.nvim_set_keymap('i', '<C-j>','<cmd> lua require"luasnip".expand_or_jump()<CR>', { noremap = true })
