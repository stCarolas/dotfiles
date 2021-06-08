Plug 'neovim/nvim-lspconfig'

cnoreabbrev <silent> ja :lua vim.lsp.buf.code_action()
cnoreabbrev <silent> jd :lua vim.lsp.buf.definition()
cnoreabbrev <silent> jd :lua vim.lsp.buf.type_definition()
nnoremap <silent> K     <cmd>lua vim.lsp.buf.hover()<CR>
