local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local c = ls.choice_node
local f = ls.function_node
local l = require("luasnip.extras").lambda
local rep = require("luasnip.extras").rep

local function get_buffer_name(_, _, _)
	local path = vim.api.nvim_buf_get_name(0)
	return string.match(path:match("%a+%.java"), "^%a+")
end

local function get_java_package()
	local path = string.gsub(vim.api.nvim_buf_get_name(0), [[.*/src/.*/java/(.*)/.*.java]], "%1")
	local package = string.gsub(path, "/", ".")
	return package
end

return {
	s("type", {
		t("package "),
		f(get_java_package, {}, {}),
		t(";"),
		t({ "", "" }),
		t({ "", "public " }),
		c(1, { t("class"), t("interface") }),
		t(" "),
		f(get_buffer_name, {}, {}),
		t({ " {", "\t" }),
		i(0),
		t({ "", "}" }),
	}),
	s("microtest", {
		t("package "),
		f(get_java_package, {}, {}),
		t(";"),
		t({ "", "" }),
		t({ "", "import static org.junit.jupiter.api.Assertions.*;" }),
		t({ "", "import static org.mockito.Mockito.*;" }),
		t({ "", "" }),
		t({ "", "import io.micronaut.test.extensions.junit5.annotation.MicronautTest;" }),
		t({ "", "import org.instancio.junit.InstancioExtension;" }),
		t({ "", "import org.junit.jupiter.api.extension.ExtendWith;" }),
		t({ "", "" }),
		t({ "", "@MicronautTest" }),
		t({ "", "@ExtendWith(InstancioExtension.class)" }),
		t({ "", "public class " }),
		f(get_buffer_name, {}, {}),
		t({ " {", "\t" }),
		i(0),
		t({ "", "}" }),
	}),
	s("{", {
		t({ "{", "" }),
		i(0),
		t({ "", "}" }),
	}),
	s("serialversion", {
		t("private static final long serialVersionUID = 1L;"),
	}),
	s("test", {
		t({ "@Test", "public void test" }),
		i(1),
		t({ "() {", "    " }),
		i(0),
		t({ "", "}" }),
	}),
	s("aseq", {
		t({ "assertEquals(expected, actual);" }),
	}),
	s("strf", {
		t({ "private String " }),
		i(1),
		t({ ";" }),
		t({ "", "" }),
		t({ "", "public String get" }),
		l(l._1:gsub("^%l", string.upper), 1),
		t({ "() {", "" }),
		t({ "\treturn " }),
		rep(1),
		t({ ";" }),
		t({ "", "}" }),
		i(0),
	}),
	s("aNN", {
		t("assertNotNull("),
		i(0),
		t(");"),
	}),
	s({ trig = "getlog" }, {
		t("private Logger log = LoggerFactory.getLogger("),
		f(get_buffer_name, {}, {}),
		t(".class);"),
	}, { callbacks = {
		-- position of the node, not the jump-index!!
		-- s("trig", {t"first node", t"second node", i(1, "third node")}).
		[-1] = {
			[events.pre_expand] = function(node, _event_args)
				print("1!")
			end,
		},
	}}),
	s("var", {
		t("var "),
		i(0),
		t(" = new "),
		i(1),
		t("();"),
	}),
	s("eqhash", {
		t({ "", "@Override", "public boolean equals(Object o) {", "" }),
		t({ "      return " }),
		f(get_buffer_name, {}, {}),
		t({ "Object.equals(this, o);" }),
		t({ "", "}" }),
		t({ "", "" }),
		t({ "", "@Override", "public int hashCode() {", "" }),
		t({ "      return " }),
		f(get_buffer_name, {}, {}),
		t({ "Object.hashCode(this);" }),
		t({ "", "}" }),
	}),
}
