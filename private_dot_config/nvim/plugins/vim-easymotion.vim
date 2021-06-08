Plug 'easymotion/vim-easymotion'

let g:EasyMotion_do_mapping = 0 " Disable default mappings
let g:EasyMotion_smartcase = 1

map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map f <Plug>(easymotion-f)
map t <Plug>(easymotion-bd-t)
map <Leader>w <Plug>(easymotion-w)
map <Leader>b <Plug>(easymotion-b)
map / <Plug>(incsearch-easymotion-/)
map ? <Plug>(incsearch-easymotion-?)
