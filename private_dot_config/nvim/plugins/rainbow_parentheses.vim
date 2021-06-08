Plug 'junegunn/rainbow_parentheses.vim'

let g:rainbow#max_level = 16
let g:rainbow#pairs = [['(', ')'], ['[', ']'], ['<','>'], ['{','}']]

autocmd FileType java RainbowParentheses
