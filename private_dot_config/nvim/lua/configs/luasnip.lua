require('configs.common_fn')
use 'L3MON4D3/LuaSnip'

local ls = require"luasnip"
local s = ls.snippet
local sn = ls.snippet_node
local isn = ls.indent_snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local c = ls.choice_node
local d = ls.dynamic_node
local r = ls.restore_node
local events = require("luasnip.util.events")
local ai = require("luasnip.nodes.absolute_indexer")
local fmt = require("luasnip.extras.fmt").fmt
local m = require("luasnip.extras").m
local lambda = require("luasnip.extras").l

vim.api.nvim_set_keymap('i', '<C-j>','<cmd> lua require"luasnip".expand_or_jump()<CR>', { noremap = true })

ls.add_snippets("java", {
	s("class", {
		t("public class "),
			f(function(_,_,_) return vim.api.nvim_buf_get_name(0) end, {},{}),
			t({" {",""}),
		i(0),
		t("}")
	})
})
