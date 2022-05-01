require('configs.common_fn')
use 'glepnir/galaxyline.nvim'

local gl = require('galaxyline')
local colors = require('galaxyline.theme').default
local condition = require('galaxyline.condition')
local gls = gl.section
local linebg = '#88C0D0'
gl.short_line_list = {'NvimTree','vista','dbui','packer'}

gls.left[1] = {
  RainbowRed = {
    provider = function() return '▊ ' end,
    highlight = {colors.blue,nil}
  },
}
gls.left[2] = {
  ViMode = {
    provider = function()
      -- auto change color according the vim mode
      local mode_color = {n = colors.red, i = colors.green,v=colors.blue,
                          [''] = colors.blue,V=colors.blue,
                          c = colors.magenta,no = colors.red,s = colors.orange,
                          S=colors.orange,[''] = colors.orange,
                          ic = colors.yellow,R = colors.violet,Rv = colors.violet,
                          cv = colors.red,ce=colors.red, r = colors.cyan,
                          rm = colors.cyan, ['r?'] = colors.cyan,
                          ['!']  = colors.red,t = colors.red}
      vim.api.nvim_command('hi GalaxyViMode guifg='..mode_color[vim.fn.mode()])
      return '  '
    end,
    highlight = {colors.red,nil,'bold'},
  },
}
gls.left[3] ={
  FileIcon = {
    provider = 'FileIcon',
    condition = condition.buffer_not_empty,
    separator = ' ',
    separator_highlight = {'NONE',linebg},
    highlight = {require('galaxyline.provider_fileinfo').get_file_icon_color,nil},
  },
}

gls.left[4] = {
  FileName = {
    provider = 'FileName',
    condition = condition.buffer_not_empty,
    highlight = {colors.darkblue,linebg,'bold'}
  }
}

gls.left[5] = {
  LineInfo = {
    provider = 'LineColumn',
    separator = ' ',
    separator_highlight = {'NONE',nil},
    highlight = {colors.darkblue,linebg},
  },
}

gls.left[7] = {
  DiagnosticError = {
    provider = 'DiagnosticError',
    icon = '  ',
    highlight = {colors.red,nil}
  }
}
gls.left[8] = {
  DiagnosticWarn = {
    provider = 'DiagnosticWarn',
    icon = '  ',
    highlight = {colors.yellow,nil},
  }
}

gls.left[9] = {
  DiagnosticHint = {
    provider = 'DiagnosticHint',
    icon = '  ',
    highlight = {colors.cyan,nil},
  }
}

gls.left[11] = {
  DiagnosticInfo = {
    provider = 'DiagnosticInfo',
    icon = '  ',
    highlight = {colors.blue,nil},
  }
}

gls.right[2] = {
  GitIcon = {
    provider = function() return '  ' end,
    condition = condition.check_git_workspace,
    separator = ' ',
    separator_highlight = {'NONE',nil},
    highlight = {colors.violet,nil,'bold'},
  }
}

gls.right[3] = {
  GitBranch = {
    provider = 'GitBranch',
    condition = condition.check_git_workspace,
    highlight = {colors.violet,nil,'bold'},
  }
}

gls.right[4] = {
  DiffAdd = {
    provider = 'DiffAdd',
    condition = condition.hide_in_width,
    icon = '    ',
    highlight = {colors.green,nil},
  }
}
gls.right[5] = {
  DiffModified = {
    provider = 'DiffModified',
    condition = condition.hide_in_width,
    icon = ' 柳',
    highlight = {colors.orange,nil},
  }
}
gls.right[6] = {
  DiffRemove = {
    provider = 'DiffRemove',
    condition = condition.hide_in_width,
    icon = '  ',
    highlight = {colors.red,nil},
  }
}

gls.right[7] = {
  RainbowBlue = {
    provider = function() return ' ▊' end,
    highlight = {colors.blue,nil}
  },
}

gls.short_line_left[1] = {
  BufferType = {
    provider = 'FileTypeName',
    separator = ' ',
    separator_highlight = {'NONE',nil},
    highlight = {colors.blue,nil,'bold'}
  }
}

gls.short_line_left[2] = {
  SFileName = {
    provider =  'SFileName',
    condition = condition.buffer_not_empty,
    highlight = {'#88C0D0',nil,'bold'}
  }
}

gls.short_line_right[1] = {
  BufferIcon = {
    provider= 'BufferIcon',
    highlight = {colors.fg,nill}
  }
}
