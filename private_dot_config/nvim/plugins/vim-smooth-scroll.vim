Plug 'terryma/vim-smooth-scroll'

noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 3, 1)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 3, 1)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 3, 4)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 3, 4)<CR>
