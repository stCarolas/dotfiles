let mapleader="m"

execute('source ~/.config/nvim/stock-options.vim')

call plug#begin()
for rcfile in split(globpath("~/.config/nvim/plugins", "*.vim"), '\n') 
    execute('source '.rcfile)
endfor
call plug#end()

execute('source ~/.config/nvim/stock-actions-hotkeys.vim')
execute('source ~/.config/nvim/colors.vim')

lua << EOF
require'lspconfig'.jdtls.setup{
    cmd = {
      '/usr/lib/jvm/java-11-openjdk/bin/java',
      '-Declipse.application=org.eclipse.jdt.ls.core.id1',
      '-Dosgi.bundles.defaultStartLevel=4',
      '-Declipse.product=org.eclipse.jdt.ls.core.product',
      '-Dlog.protocol=true', '-Dlog.level=ALL',
      '-javaagent:/home/stCarolas/Coding/lombok.jar',
      '-Xms4g', '-Xmx8G',
      '-jar', '/home/stCarolas/Coding/jdt/plugins/org.eclipse.equinox.launcher_1.6.0.v20200915-1508.jar',
      '-configuration', '/home/stCarolas/Coding/jdt/config_linux',
      '-data', '/home/stCarolas/Downloads/workspace',
      '--add-modules=ALL-SYSTEM',
      '--add-opens java.base/java.util=ALL-UNNAMED',
      '--add-opens java.base/java.lang=ALL-UNNAMED' 
    },
    init_options = {
      workspace = '/home/stCarolas/Downloads/workspace'
    },
    root_dir = require'lspconfig'.util.root_pattern('.git');
}
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = false
  },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "<c-i>",
      node_incremental = "<c-n>",
      scope_incremental = "<c-s>",
      node_decremental = "<c-e>",
    },
  },
  refactor = {
    highlight_definitions = { enable = true },
  },
}
EOF
