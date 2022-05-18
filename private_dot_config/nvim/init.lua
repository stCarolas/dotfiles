-- packer
require('plugins')

-- standart options
require('stock_options')

-- beatify
require('configs.nightfox')
require('configs.modes')

-- navigation
require('configs.nvim-tree')
require('configs.telescope')
require('configs.hop')

-- code editing
require('configs.lsp')
require('configs.cinnamon')
require('configs.treesitter')
require('configs.cmp')
require('configs.luasnip')
require('configs.comment')
require('configs.vim-test')
require('configs.gitsigns')
use 'lukas-reineke/indent-blankline.nvim'
use 'APZelos/blamer.nvim'
use 'gpanders/editorconfig.nvim'
require'lspconfig'.sumneko_lua.setup{}
use 'github/copilot.vim'
require('configs.diffview')

-- utils
require('configs.term')
require('configs.close_buffers')
use 'airblade/vim-rooter'
require('configs.notify')
use 'yamatsum/nvim-nonicons'
require('configs.twilight')
require('configs.galaxyline')
