Plug 'nvim-lua/completion-nvim'

inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
imap <silent> <C-space> <Plug>(completion_trigger)
autocmd BufEnter * lua require'completion'.on_attach()

set completeopt=menuone,noinsert,noselect
