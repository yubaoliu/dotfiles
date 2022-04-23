"" ============= COLOR  ==============""
" 自動補完の色設定
set pumheight=10
hi Pmenu ctermbg=black ctermfg=white guifg=#000000 guibg=#999999
hi PmenuSel ctermbg=blue ctermfg=white
hi PmenuSbar ctermbg=0 ctermfg=9
hi PmenuSbar ctermbg=255 ctermfg=0 guifg=#000000 guibg=#FFFFFF

""=============== FONT ===============""
"文字コード変更
set encoding=utf-8
set fileencodings=utf-8
set fileformats=unix,dos,mac
" "文字コードをUFT-8に設定
set fenc=utf-8

""=================[Plug] vim-indent-guides ============""
":IndentGuidesEnable
" :IndentGuidesDisable
" :IndentGuidesToggle 
" 随 vim 自启动
let g:indent_guides_enable_on_vim_startup = 0
" 从第二层开始可视化显示缩进
let g:indent_guides_start_level=2
" 色块宽度
let g:indent_guides_guide_size=1


