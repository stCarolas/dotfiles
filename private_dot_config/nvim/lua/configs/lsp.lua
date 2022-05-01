require('configs.common_fn')

use 'neovim/nvim-lspconfig'
use 'mfussenegger/nvim-jdtls'

alias('ja','lua vim.lsp.buf.code_action()')
alias('je','lua vim.diagnostic.open_float()')
alias('jd','lua vim.lsp.buf.definition()')
alias('jt','lua vim.lsp.buf.declaration()')
