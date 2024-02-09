return {
	"L3MON4D3/LuaSnip",
	config = function()
		local luasnip = require("luasnip")

		vim.keymap.set({ "i" }, "<C-j>", function()
			require("luasnip").expand_or_jump()
		end, { noremap = true })

		vim.keymap.set({ "i", "s" }, "<A-n>", function()
			if luasnip.choice_active() then
				luasnip.change_choice(1)
			end
		end, { silent = true })
		local ls = require("luasnip")
		local s = ls.snippet
		local t = ls.text_node
		local i = ls.insert_node
		local c = ls.choice_node
		local f = ls.function_node
		local l = require("luasnip.extras").lambda
		local rep = require("luasnip.extras").rep

		local function get_tsx_component_name(_, _, _)
			local path = vim.api.nvim_buf_get_name(0)
			return string.match(path:match("%a+%.tsx"), "^%a+")
		end

		local function get_ts_name(_, _, _)
			local path = vim.api.nvim_buf_get_name(0)
			return string.match(path:match("%a+%.ts"), "^%a+")
		end

		ls.add_snippets("typescriptreact", {
			s("div", {
				t({ "<div>" }),
				i(0),
				t({ "</div>" }),
			}),
		})

		ls.add_snippets("typescriptreact", {
			s("comp", {
				t({ 'import React from "react";' }),
				t({ "", "" }),
				t({ "", "" }),
				t({ "export default function " }),
				f(get_tsx_component_name, {}, {}),
				t({ "({}){", "" }),
				t({ "\treturn (", "" }),
				t({ "\t\t<>" }),
				i(0),
				t({ "", "" }),
				t({ "\t\t</>", "" }),
				t({ "\t);", "" }),
				t({ "}" }),
			}),
		})

		ls.add_snippets("typescript", {
			s("class", {
				t({ "export class " }),
				f(get_ts_name, {}, {}),
				t({ "{", "" }),
				i(0),
				t({ "}" }),
			}),
		})

		ls.add_snippets("typescriptreact", {
			s("state", {
				t({ "const [" }),
				i(1),
				t({ ", set" }),
				l(l._1:gsub("^%l", string.upper), 1),
				t("] = useState<"),
				i(2, "any"),
				t(">"),
				t("("),
				i(0),
				t(");"),
			}),
		})

		ls.add_snippets("typescriptreact", {
			s("effect", {
				t({ "useEffect(() => {", "" }),
				i(0),
				t({ "", "},[" }),
				i(1),
				t("]);"),
			}),
		})

		ls.add_snippets("typescriptreact", {
			s("css", {
				t('import classes from "./'),
				f(get_tsx_component_name, {}, {}),
				t('.module.css";'),
				i(0),
			}),
		})

		require("luasnip.loaders.from_lua").load({ paths = "~/.config/nvim/snippets" })
	end,
}
