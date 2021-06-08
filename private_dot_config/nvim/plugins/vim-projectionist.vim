Plug 'tpope/vim-projectionist'

nnoremap <F4> :A<CR>
let g:projectionist_heuristics = {
  \ "pom.xml": {
  \   "src/main/java/*.java": {
  \     "alternate": "src/test/java/{}Test.java",
  \     "type": "source",
  \     "make": "mvn -Dtest={}Test test"
  \   },
  \   "src/test/java/*Test.java": {
  \     "alternate": "src/main/java/{}.java",
  \     "type": "test"
  \   },
  \   "*": {"make": "mvn clean install -U"}
  \ },
  \ "build.gradle": {
  \   "src/main/java/*.java": {
  \     "alternate": "src/test/java/{}Test.java",
  \     "type": "source"
  \   },
  \   "src/test/java/*Test.java": {
  \     "alternate": "src/main/java/{}.java",
  \     "type": "test"
  \   }
  \ }
\ }
