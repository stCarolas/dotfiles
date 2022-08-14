local use = require'packer'.use

use {
	'glepnir/galaxyline.nvim',
	config = function()
		local gl = require('galaxyline')
		local colors = require('galaxyline.theme').default
		local condition = require('galaxyline.condition')
		local section = gl.section
		local linebg = '#88C0D0'
		gl.short_line_list = {'NvimTree','packer'}

		section.left[0] = {
			LeftSeparator = {
				provider = function () return ' ' end,
				highlight = {colors.darkblue,linebg}
			}
		}

		section.left[1] = {
			FileName = {
				provider = 'FileName',
				condition = condition.buffer_not_empty,
				highlight = {colors.darkblue,linebg,'bold'}
			}
		}

		section.left[2] = {
			LineInfo = {
				provider = 'LineColumn',
				separator = ' ',
				separator_highlight = {'NONE',nil},
				highlight = {colors.darkblue,linebg},
			},
		}

		section.left[3] = {
			DiagnosticError = {
				provider = 'DiagnosticError',
				icon = '  ',
				highlight = {colors.red,nil}
			}
		}
		section.left[4] = {
			DiagnosticWarn = {
				provider = 'DiagnosticWarn',
				icon = '  ',
				highlight = {colors.yellow,nil},
			}
		}

		section.left[5] = {
			DiagnosticHint = {
				provider = 'DiagnosticHint',
				icon = '  ',
				highlight = {colors.cyan,nil},
			}
		}

		section.left[6] = {
			DiagnosticInfo = {
				provider = 'DiagnosticInfo',
				icon = '  ',
				highlight = {colors.blue,nil},
			}
		}

		section.right[1] = {
			DiffAdd = {
				provider = 'DiffAdd',
				condition = condition.hide_in_width,
				icon = '  ',
				highlight = {colors.green,nil},
			}
		}
		section.right[2] = {
			DiffModified = {
				provider = 'DiffModified',
				condition = condition.hide_in_width,
				icon = ' 柳',
				highlight = {colors.orange,nil},
			}
		}
		section.right[3] = {
			DiffRemove = {
				provider = 'DiffRemove',
				condition = condition.hide_in_width,
				icon = '  ',
				highlight = {colors.red,nil},
			}
		}

		section.right[4] = {
			GitIcon = {
				provider = function() return '  ' end,
				condition = condition.check_git_workspace,
				highlight = {colors.violet,nil,'bold'},
			}
		}

		section.right[5] = {
			GitBranch = {
				provider = 'GitBranch',
				condition = condition.check_git_workspace,
				highlight = {colors.violet,nil,'bold'},
			}
		}


		section.right[6] = {
			ProjectWorkspace = {
				provider = function() return ' ' .. string.gsub(vim.fn.getcwd(),[[(.*)/.-]], '') .. ' ' end,
				separator = ' ',
				separator_highlight = {'NONE',nil},
				highlight = {colors.darkblue,linebg,'bold'},
			}
		}

		section.short_line_left[1] = {
			BufferType = {
				provider = 'FileTypeName',
				separator = ' ',
				separator_highlight = {'NONE',nil},
				highlight = {colors.blue,nil,'bold'}
			}
		}

		section.short_line_left[2] = {
			SFileName = {
				provider =  'SFileName',
				condition = condition.buffer_not_empty,
				highlight = {'#88C0D0',nil,'bold'}
			}
		}

		section.short_line_right[1] = {
			BufferIcon = {
				provider= 'BufferIcon',
				highlight = {colors.fg,nil}
			}
		}
	end
}
