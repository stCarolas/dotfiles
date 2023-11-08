vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.expandtab = true

local query = vim.treesitter.query.parse('java',[[
	((package_declaration) . 
	(import_declaration) @first_import
	(import_declaration)*
	(import_declaration)? @last_import .
	(class_declaration))
]])

local parser = vim.treesitter.get_parser(0, 'java')
local tstree = parser:parse()[1]
local first_import = 0
local last_import = 0
for id, node, metadata in query:iter_captures(tstree:root(),0) do
  local name = query.captures[id] -- name of the capture in the query
  local row1, col1, row2, col2 = node:range() -- range of the capture
  if name == 'first_import' then first_import = row1 + 1 end
  if name == 'last_import' then last_import = row1 + 1 end
  -- local row1, col1, row2, col2 = node:range() -- range of the capture
    -- print(row1, col1)
end
vim.cmd(first_import .. "," .. last_import .. "fold")

local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ':p:h:t')
local workspace_dir = '/tmp/' .. project_name

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.foldingRange = {
    dynamicRegistration = false,
    lineFoldingOnly = true
}

local config = {
	-- capabilities = capabilities,
  cmd = {
    'java',
    '-Declipse.application=org.eclipse.jdt.ls.core.id1',
    '-Dosgi.bundles.defaultStartLevel=4',
    '-Declipse.product=org.eclipse.jdt.ls.core.product',
    '-Dlog.protocol=true',
    '-Dlog.level=ALL',
    '-Xms4g',
    '--add-modules=ALL-SYSTEM',
    '--add-opens', 'java.base/java.util=ALL-UNNAMED',
    '--add-opens', 'java.base/java.lang=ALL-UNNAMED',
		'-javaagent:' .. os.getenv("HOME") .. '/Coding/libs/lombok.jar',
    -- '-jar', os.getenv("HOME") .. '/Coding/projects/eclipse.jdt.ls/org.eclipse.jdt.ls.product/target/repository/plugins/org.eclipse.equinox.launcher_1.6.400.v20210924-0641.jar',
    -- '-configuration', os.getenv("HOME") .. '/Coding/projects/eclipse.jdt.ls/org.eclipse.jdt.ls.product/target/repository/config_linux',
    '-jar', os.getenv("HOME") .. '/Coding/libs/jdt/plugins/org.eclipse.equinox.launcher.jar',
    '-configuration', os.getenv("HOME") .. '/Coding/libs/jdt/config_linux',
    '-data', workspace_dir
  },
  root_dir = require('jdtls.setup').find_root({'.git'}),

  settings = {
		java = {
			completion = {
				favoriteStaticMembers = {
					"org.junit.jupiter.api.Assertions.*",
					"org.mockito.Mockito.*"
				}
			}
		}
	},

  init_options = { bundles = vim.split(vim.fn.glob("/home/stCarolas/Coding/libs/pde/*.jar"), "\n") },
}

require('jdtls').start_or_attach(config)

vim.cmd 'hi TSFunction guifg=#5d6f74'
vim.cmd 'hi TSField guifg=#9acccc'
vim.cmd 'hi TSParameter guifg=#9acccc'
vim.cmd 'hi TSString guifg=#3b6392 gui=italic'

query = vim.treesitter.query.parse('java',[[
	((marker_annotation name: (identifier) @capture )(#match? @capture "Log4j2"))
]])
