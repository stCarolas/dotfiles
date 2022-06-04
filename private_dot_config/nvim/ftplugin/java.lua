local opt = vim.opt             -- global/buffer/windows-scoped options

opt.shiftwidth = 4
opt.tabstop = 4
opt.expandtab = true

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
    '-Xms1g',
    '--add-modules=ALL-SYSTEM',
    '--add-opens', 'java.base/java.util=ALL-UNNAMED',
    '--add-opens', 'java.base/java.lang=ALL-UNNAMED',
		'-javaagent:/home/stCarolas/Coding/libs/lombok.jar',
    '-jar', '/home/stCarolas/Coding/libs/jdt/plugins/org.eclipse.equinox.launcher_1.6.400.v20210924-0641.jar',
    '-configuration', '/home/stCarolas/Coding/libs/jdt/config_linux',
    '-data', workspace_dir
  },
  root_dir = require('jdtls.setup').find_root({'.git'}),

  settings = { java = {} },

  init_options = { bundles = {} },
}

require('jdtls').start_or_attach(config)

-- vim.api.nvim_create_autocmd({"InsertLeave"}, {
-- 	command = "Neoformat"
-- })
