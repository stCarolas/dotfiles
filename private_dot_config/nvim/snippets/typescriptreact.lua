local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local c = ls.choice_node
local f = ls.function_node
local l = require("luasnip.extras").lambda
local rep = require("luasnip.extras").rep

local function get_ts_name(_, _, _)
	local path = vim.api.nvim_buf_get_name(0)
	return string.match(path:match("%a+%.ts"), "^%a+")
end

local function get_tsx_component_name(_, _, _)
	local path = vim.api.nvim_buf_get_name(0)
	return string.match(path:match("%a+%.tsx"), "^%a+")
end

return {
	s("div", {
		t({ "<div>", "\t" }),
		i(0),
		t({ "", "</div>" }),
	}),
}, {
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
}, {
	s("class", {
		t({ "export class " }),
		f(get_ts_name, {}, {}),
		t({ "{", "" }),
		i(0),
		t({ "}" }),
	}),
}, {
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
}, {
	s("effect", {
		t({ "useEffect(() => {", "" }),
		i(0),
		t({ "", "},[" }),
		i(1),
		t("]);"),
	}),
}, {
	s("importcss", {
		t('import classes from "./'),
		f(get_tsx_component_name, {}, {}),
		t('.module.css";'),
		i(0),
	}),
}
