require('configs.common_fn')
use 'sbdchd/neoformat'
map("<space>f", "<cmd>Neoformat<cr>")
vim.cmd 'autocmd BufWritePre *.js Neoformat'
