vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.expandtab = true

local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ':p:h:t')
local workspace_dir = '/tmp/' .. project_name

local config = {
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
