require('configs.common_fn')
use "EdenEast/nightfox.nvim"

require('nightfox').setup({
	specs = {
		nightfox = {
			diag_bg = {
				error = "bg1"
			}
		}
	},
  groups = {
		all = {
			Type = { fg = "palette.cyan" },
			TSParameter = { fg = "palette.white" },
		}
	},
  options = {
    styles = {
      comments = "italic",
    }
  }
})

cmd "colorscheme nightfox"
