" vim-airline settings
set laststatus=2
" Install powerline font,
" https://gitcode.net/mirrors/powerline/fonts?utm_source=csdn_github_accelerator
"安装字体后必须设置
let g:airline_powerline_fonts = 1
let g:airline_theme = 'bubblegum'

"关闭tabline
" let g:airline#extensions#tabline#enabled = 0
" let g:airline#extensions#tabline#buffer_nr_show = 1
" if !exists('g:airline_symbols')
"   let g:airline_symbols = {}
" endif

"unicode symbols
let g:airline_left_sep = '▶'
let g:airline_left_alt_sep = '❯'
let g:airline_right_sep = '◀'
let g:airline_right_alt_sep = '❮'

" let g:airline#extensions#tabline#left_sep = ' '
" let g:airline#extensions#tabline#left_alt_sep = '|'
" 
"打开tabline功能,方便查看Buffer和切换，这个功能比较不错"
"我还省去了minibufexpl插件，因为我习惯在1个Tab下用多个buffer"
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

" 关闭状态显示空白符号计数,这个对我用处不大"
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#whitespace#symbol = '!'
let g:airline#extensions#branch#symbol =  '⎇'
let g:airline#extensions#linear#symbol = '¶'

let g:airline#extensions#tabline#formatter = 'default'

" together with taboo
let g:airline#extensions#taboo#enabled = 1

" together use with tmuxline.vim
let g:airline#extensions#tmuxline#enabled = 0

