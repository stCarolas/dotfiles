Plug 'stCarolas/vim-test'

let test#strategy = "asyncrun"
let g:test#java#gradletest#options = " --continue"
let g:test#java#maventest#options = " -DfailIfNoTests=false"

nmap <silent> t<C-n> :TestNearest<CR>
nmap <silent> t<C-f> :TestFile<CR>
nmap <silent> t<C-s> :TestSuite<CR>
nmap <silent> t<C-l> :TestLast<CR>
nmap <silent> t<C-g> :TestVisit<CR>
