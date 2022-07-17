-- packer
require('plugins')

-- standart options
require('stock_options')

-- beatify
-- require('configs.nightfox')
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
require('configs.neoformat')
require('configs.vim-test')
require('configs.gitsigns')
use 'lukas-reineke/indent-blankline.nvim'
use 'APZelos/blamer.nvim'
use 'gpanders/editorconfig.nvim'
use {
  "amrbashir/nvim-docs-view",
  opt = true,
  cmd = { "DocsViewToggle" },
  config = function()
    require("docs-view").setup {
      position = "right",
      width = 60,
    }
  end
}
require'lspconfig'.sumneko_lua.setup{}
require'lspconfig'.pylsp.setup{}
use 'github/copilot.vim'
require('configs.diffview')
use 'mfussenegger/nvim-dap'

-- utils
require('configs.term')
require('configs.close_buffers')
require('configs.notify')
use 'yamatsum/nvim-nonicons'
require('configs.twilight')
require('configs.galaxyline')
require('configs.project')
-- use {
-- 	'kevinhwang91/nvim-hlslens',
-- 	config = function() require('hlslens').setup({
-- 		nearest_float_when = 'always'
-- 	}) end
-- }
use {
	'j-hui/fidget.nvim',
	config = function() require('fidget').setup() end
}
use {
	'm-demare/hlargs.nvim',
	config = function() require('hlargs').setup() end
}
use 'folke/lsp-colors.nvim'
use 'dstein64/nvim-scrollview'
use 'kassio/neoterm'
use {
	"luukvbaal/stabilize.nvim",
	config = function() require("stabilize").setup() end
}
use 'stCarolas/boo-colorscheme-nvim'
vim.cmd 'colorscheme boo'
-- vim.cmd 'set foldexpr=nvim_treesitter#foldexpr()'
-- vim.cmd 'set foldmethod=expr'
-- vim.cmd 'set foldlevel=99'
vim.o.foldcolumn = '1'
vim.o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
vim.o.foldlevelstart = -1
vim.o.foldenable = true

use {
	'kevinhwang91/nvim-ufo',
	requires = 'kevinhwang91/promise-async',
	config = function()
		require('ufo').setup({
			provider_selector = function(bufnr, filetype)
					return {'treesitter', 'indent'}
			end,
			enable_fold_end_virt_text = true
		})
	end
}

use 'mfussenegger/nvim-dap-python'
require('dap-python').setup()
vim.cmd 'hi TSFunction guifg=#5d6f74'
vim.cmd 'hi TSField guifg=#9acccc'
