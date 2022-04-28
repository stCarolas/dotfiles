-- nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({
		'git', 'clone', '--depth', '1',
		'https://github.com/wbthomason/packer.nvim',
		install_path
	})
end

local opt = vim.opt             -- global/buffer/windows-scoped options

opt.shiftwidth = 2
opt.tabstop = 2
opt.colorcolumn = '80'
opt.cursorline = true
opt.number = true
opt.termguicolors = true

local g = vim.g                 -- global variables
g.mapleader = "m"
g.nvim_tree_show_icons = {
	git = 1,
	folders = 1,
	files = 1,
	folder_arrows = 1,
}

local map = function(lhs, rhs)
    vim.api.nvim_set_keymap('n', lhs, rhs, { noremap = true })
end

local alias = function(lhs, rhs)
	vim.api.nvim_exec("cabbrev " .. lhs .. " <cmd>" .. rhs .. "<CR>", false)
end

local cmd = vim.cmd             -- execute Vim commands
local exec = vim.api.nvim_exec  -- execute Vimscript

require('plugins')

map(';',':')

map('gf','<cmd>Telescope find_files<cr>')
map('gt','<cmd>Telescope buffers<cr>')

alias('ja','lua vim.lsp.buf.code_action()')
alias('je','lua vim.diagnostic.open_float()')
alias('jd','lua vim.lsp.buf.definition()')
alias('jt','lua vim.lsp.buf.declaration()')

map('<leader>n','<cmd> lua require"nvim-tree".find_file(true)<CR>')

map('<leader>t','<cmd>:TestNearest<cr>')

vim.api.nvim_set_keymap('', 'f', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true, inclusive_jump = true })<cr>", {})
vim.api.nvim_set_keymap('', 'F', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true, inclusive_jump = true })<cr>", {})
vim.api.nvim_set_keymap('', 't', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true })<cr>", {})
vim.api.nvim_set_keymap('', 'T', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true })<cr>", {})
vim.api.nvim_set_keymap('n', '<leader>w', "<cmd> lua require'hop'.hint_words({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR})<cr>", {})
vim.api.nvim_set_keymap('v', '<leader>w', "<cmd> lua require'hop'.hint_words({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR})<cr>", {})
vim.api.nvim_set_keymap('o', '<leader>w', "<cmd> lua require'hop'.hint_words({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR})<cr>", {})
vim.api.nvim_set_keymap('n', '<leader>b', "<cmd> lua require'hop'.hint_words({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR})<cr>", {})
vim.api.nvim_set_keymap('v', '<leader>b', "<cmd> lua require'hop'.hint_words({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR})<cr>", {})
vim.api.nvim_set_keymap('o', '<leader>b', "<cmd> lua require'hop'.hint_words({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR})<cr>", {})
vim.api.nvim_set_keymap('n', '<leader>j', "<cmd> lua require'hop'.hint_lines({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR})<cr>", {})
vim.api.nvim_set_keymap('v', '<leader>j', "<cmd> lua require'hop'.hint_lines({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR})<cr>", {})
vim.api.nvim_set_keymap('o', '<leader>j', "<cmd> lua require'hop'.hint_lines({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR})<cr>", {})

cmd 'colorscheme onenord'

require'hop'.setup()
require('modes').setup({
		colors = {
			copy = "#f5c359",
			delete = "#c75c6a",
			insert = "#78ccc5",
			visual = "#9745be",
		},

		-- Set opacity for cursorline and number background
		line_opacity = 0.15,

		-- Enable cursor highlights
		set_cursor = true,

		-- Enable cursorline initially, and disable cursorline for inactive windows
		-- or ignored filetypes
		set_cursorline = true,

		-- Enable line number highlights to match cursorline
		set_number = true,
})

require'nvim-tree'.setup({
	view = {
    width = 300,
	},
	actions = {
		open_file = {
			quit_on_open = true
		}
	}
})

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
    icon = '  ',
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

require('gitsigns').setup()
local cmp = require'cmp'
cmp.setup({
	mapping = cmp.mapping.preset.insert({
		['<C-b>'] = cmp.mapping.scroll_docs(-4),
		['<C-f>'] = cmp.mapping.scroll_docs(4),
		['<C-Space>'] = cmp.mapping.complete(),
		['<C-e>'] = cmp.mapping.abort(),
		['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
	}),
	sources = cmp.config.sources({
		{ name = 'nvim_lsp' },
		-- { name = 'vsnip' }, -- For vsnip users.
		-- { name = 'luasnip' }, -- For luasnip users.
		-- { name = 'ultisnips' }, -- For ultisnips users.
		-- { name = 'snippy' }, -- For snippy users.
	})
})
