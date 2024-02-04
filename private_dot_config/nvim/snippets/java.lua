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
}, {
	s("microtest", {
		t("package "),
		f(get_java_package, {}, {}),
		t(";"),
		t({ "", "" }),
		t({ "", "import static org.junit.jupiter.api.Assertions.*;" }),
		t({ "", "import static org.hamcrest.Matchers.*;" }),
		t({ "", "" }),
		t({ "", "import io.micronaut.test.extensions.junit5.annotation.MicronautTest;" }),
		t({ "", "import io.restassured.specification.RequestSpecification;" }),
		t({ "", "" }),
		t({ "", "@MicronautTest" }),
		t({ "", "public class " }),
		f(get_buffer_name, {}, {}),
		t({ " {", "\t" }),
		i(0),
		t({ "", "}" }),
	}),
}, {
	s("{", {
		t({ "{", "" }),
		i(0),
		t({ "", "}" }),
	}),
}, {
	s("serialversion", {
		t("private static final long serialVersionUID = 1L;"),
	}),
}, {
	s("test", {
		t({ "@Test", "public void test" }),
		i(1),
		t({ "() {", "    " }),
		i(0),
		t({ "", "}" }),
	}),
}, {
	s("aseq", {
		t({ "assertEquals(expected, actual);" }),
	}),
}, {
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
}, {
	s("aNN", {
		t("assertNotNull("),
		i(0),
		t(");"),
	}),
}, {
	s("getlog", {
		t("private final static Logger log = LogManager.getLogger();"),
	}),
}
