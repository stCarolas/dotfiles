Plug 'Shougo/defx.nvim'

function! s:defx_my_settings() abort
	call defx#custom#column('filename', {
	      \ 'min_width': 40,
	      \ 'max_width': 120,
	      \ })
  
  nnoremap <silent><buffer><expr> <CR>
    \ defx#do_action('open')
  nnoremap <silent><buffer><expr> o
    \ defx#do_action('open')
  nnoremap <silent><buffer><expr> l
    \ defx#do_action('open')
  nnoremap <silent><buffer><expr> a
    \ defx#do_action('new_file')
  nnoremap <silent><buffer><expr> t
    \ defx#do_action('open_tree')
  nnoremap <silent><buffer><expr> T
    \ defx#do_action('open_tree_recursive')
  nnoremap <silent><buffer><expr> d
    \ defx#do_action('remove')
  nnoremap <silent><buffer><expr> y
    \ defx#do_action('copy')
  nnoremap <silent><buffer><expr> p
	  \ defx#do_action('paste')
  nnoremap <silent><buffer><expr> r
	  \ defx#do_action('rename')
  nnoremap <silent><buffer><expr> h
	  \ defx#do_action('cd', ['..'])
endfunction

autocmd FileType defx call s:defx_my_settings()
nnoremap <silent> <leader>n :Defx `expand('%:p:h')` -search=`expand('%:p')`<CR>
