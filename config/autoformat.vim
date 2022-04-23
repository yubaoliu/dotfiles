" autocmd FileType c,cpp setlocal equalprg=clang-format
" autocmd FileType vim,tex let b:autoformat_autoindent=0
"" Python format
" pip install --upgrade autopep8

let g:autoformat_autoindent = 0
let g:autoformat_retab = 0
let g:autoformat_remove_trailing_spaces = 0 " not work, does not need
let g:autoformat_verbosemode=0

"" yapf
let g:formatter_yapf_style = 'pep8'

"" markdown
"  plasticboy/vim-markdown
let g:vim_markdown_folding_disabled = 0


