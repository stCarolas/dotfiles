require('configs.common_fn')
use "folke/twilight.nvim"
require("twilight").setup({
	context = 1,
	expand = { -- for treesitter, we we always try to expand to the top-most ancestor with these types
    "method",
  },
})
