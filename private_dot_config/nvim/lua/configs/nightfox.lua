require('configs.common_fn')

require('nightfox').setup({
	specs = {
		nightfox = {
			diag_bg = {
				error = "bg1"
			}
		}
	},
  groups = {
  	Type = { fg = "palette.cyan" },
		TSParameter = { fg = "palette.white" },
	},
  options = {
    styles = {
      comments = "italic",
    }
  }
})

cmd "colorscheme nightfox"
