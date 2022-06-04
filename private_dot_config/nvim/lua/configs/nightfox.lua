require('configs.common_fn')
use({
	"EdenEast/nightfox.nvim",
  config = function()
		require('nightfox').setup({
		specs = {
			nightfox = {
				diag_bg = {
					error = "bg1",
					warning = "bg1",
					warn = "bg1",
					info = "bg1",
					hints = "bg1"
				}
			}
		},
		groups = {
			all = {
				Type = { fg = "palette.cyan" },
				TSParameter = { fg = "palette.white" },
				DiagnosticError = { bg = "bg1" },
				DiagnosticWarn = { bg = "bg1" },
				DiagnosticInfo = { bg = "bg1" },
				DiagnosticHint = { bg = "bg1" },
				DiagnosticVirtualTextWarn = { bg = "bg1" },
				DiagnosticVirtualTextInfo = { bg = "bg1" },
				DiagnosticVirtualTextHint = { bg = "bg1" },
				DiagnosticVirtualTextError = { bg = "bg1" },
			}
		},
		options = {
			styles = {
				comments = "italic",
			}
		}
	})

	cmd "colorscheme nightfox"
end
})
