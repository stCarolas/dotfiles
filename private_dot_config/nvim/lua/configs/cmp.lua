require('configs.common_fn')

use 'hrsh7th/cmp-nvim-lsp'
use 'saadparwaiz1/cmp_luasnip'
use {'tzachar/cmp-tabnine', run='./install.sh'}
use 'hrsh7th/nvim-cmp'

local cmp = require'cmp'
cmp.setup({
	snippet = {
		expand = function(args)
			require'luasnip'.lsp_expand(args.body)
		end
	},
	window = {
		completion = cmp.config.window.bordered(),
		-- documentation = cmp.config.window.bordered(),
	},
	mapping = cmp.mapping.preset.insert({
		['<C-b>'] = cmp.mapping.scroll_docs(-4),
		['<C-f>'] = cmp.mapping.scroll_docs(4),
		['<C-Space>'] = cmp.mapping.complete(),
		['<C-e>'] = cmp.mapping.abort(),
		['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
	}),
	sources = cmp.config.sources({
		-- { name = 'cmp_tabnine', group = 2 },
		-- { name = 'copilot', group = 2 },
		{ name = 'nvim_lsp' }
	})
})
