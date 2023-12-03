" autocmd FileType c,cpp setlocal equalprg=clang-format
" autocmd FileType vim,tex let b:autoformat_autoindent=0
"" Python format
" pip install --upgrade autopep8

let g:autoformat_autoindent = 1
let g:autoformat_retab = 1
let g:autoformat_remove_trailing_spaces = 1 " not work, does not need
let g:autoformat_verbosemode=1

"" yapf
let g:formatter_yapf_style = 'pep8'

autocmd FileType c,cpp autocmd BufWritePre * :Autoformat
