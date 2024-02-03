return { 'L3MON4D3/LuaSnip',
	config = function ()

		local function get_ts_name(_,_,_)
			local path = vim.api.nvim_buf_get_name(0)
			return string.match(path:match "%a+%.ts", "^%a+")
		end

		local function get_buffer_name(_,_,_)
			local path = vim.api.nvim_buf_get_name(0)
			return string.match(path:match "%a+%.java", "^%a+")
		end

		local function get_tsx_component_name(_,_,_)
			local path = vim.api.nvim_buf_get_name(0)
			return string.match(path:match "%a+%.tsx", "^%a+")
		end

		local function get_java_package()
			local path = string.gsub(vim.api.nvim_buf_get_name(0), [[.*/src/.*/java/(.*)/.*.java]], "%1")
			local package = string.gsub(path, '/', '.')
			return package
		end

		local ls = require"luasnip"
		local s = ls.snippet
		local t = ls.text_node
		local i = ls.insert_node
		local c = ls.choice_node
		local f = ls.function_node
    local l = require("luasnip.extras").lambda
    local rep = require("luasnip.extras").rep

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
			s("microtest", {
				t("package "),f(get_java_package, {}, {}), t(";"),
				t({"",""}),
				t({"","import static org.junit.jupiter.api.Assertions.*;"}),
				t({"","import static org.hamcrest.Matchers.*;"}),
				t({"",""}),
				t({"","import io.micronaut.test.extensions.junit5.annotation.MicronautTest;"}),
				t({"","import io.restassured.specification.RequestSpecification;"}),
				t({"",""}),
				t({"","@MicronautTest"}),
				t({"","public class "}),f(get_buffer_name, {},{}),
				t({ " {", "\t" }),
				i(0),
				t({ "", "}" }),
			})
		})
		ls.add_snippets("java", {
			s("{", {
				t({"{",""}),
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

		ls.add_snippets("java", {
			s("strf", {
				t({"private String "}), i(1), t({";"}),
				t({"",""}),
				t({"","public String get"}),l(l._1:gsub("^%l", string.upper), 1), t({"() {",""}),
				t({"\treturn "}),rep(1),t({";"}),
				t({"","}"}),i(0)
			})
		})

    ls.add_snippets("java", {
      s("aNN",{
        t("assertNotNull("), i(0),t(");"),
      })
    })

    ls.add_snippets("java", {
      s("getlog",{
        t("private final static Logger log = LogManager.getLogger();"),
      })
    })

		ls.add_snippets("typescriptreact", {
			s("div", {
				t({"<div>"}), i(0), t({"</div>"}),
			})
		})

		ls.add_snippets("typescriptreact", {
			s("comp", {
				t({'import React from "react";'}),
				t({"",""}),
				t({"",""}),
				t({"export default function "}), f(get_tsx_component_name, {},{}), t({"({}){",""}),
				t({"\treturn (",""}),
				t({"\t\t<>"}),
				i(0),t({"",""}),
				t({"\t\t</>",""}),
				t({"\t);",""}),
				t({"}"}),
			})

		})

		ls.add_snippets("typescript", {
			s("class", {
				t({"export class "}), f(get_ts_name, {}, {}), t({"{",""}),
        i(0),
				t({"}"}),
			})

		})

		ls.add_snippets("typescriptreact", {
			s("state", {
				t({'const ['})
        ,i(1), t({', set'}),l(l._1:gsub("^%l", string.upper), 1),
        t('] = useState<'),i(2, "any"),t('>'),t('('),i(0),t(');')
			})
    })

		ls.add_snippets("typescriptreact", {
			s("effect", {
				t({'useEffect(() => {',""}),
        i(0),
        t({"",'},['}), i(1), t(']);')
			})
    })

		ls.add_snippets("typescriptreact", {
			s("css", {
				t('import classes from "./'),f(get_tsx_component_name, {},{}),t('.module.css";'),
        i(0),
			})
    })

		vim.api.nvim_set_keymap('i', '<C-j>','<cmd> lua require"luasnip".expand_or_jump()<CR>', { noremap = true })
	end
}
