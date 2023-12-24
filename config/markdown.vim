" " https://github.com/Kazark/plasticboy-vim-markdown
" " https://jpliu.github.io/vimplugin-vim-markdown.html

" ]]: go to next header. <Plug>(Markdown_MoveToNextHeader)
" [[: go to previous header. Contrast with ]c. <Plug>(Markdown_MoveToPreviousHeader)
" ][: go to next sibling header if any. <Plug>(Markdown_MoveToNextSiblingHeader)
" []: go to previous sibling header if any. <Plug>(Markdown_MoveToPreviousSiblingHeader)
" ]c: go to Current header. <Plug>(Markdown_MoveToCurHeader)
" ]u: go to parent header (Up). <Plug>(Markdown_MoveToParentHeader)

" 查看所有配置建议
" :help vim-markdwon
"
" :help fold-commands   #标题命令的帮助
" [[ "跳转上一个标题
" ]] "跳转下一个标题
" ]c "跳转到当前标题
" ]u "跳转到副标题
" zr "打开下一级折叠
" zR "打开所有折叠
" zm "折叠当前段落
" zM "折叠所有段落
"
" map ]] <Plug>Markdown_MoveToNextHeader     #这里可以在.vimrc文件中手动更改

" :HeaderDecrease 降低缓冲区中所有标头的级别：h2至h1，h3至h2等。如果给出了范围，则只能在该范围内运行。为了简化实施，将Setex标头转换为Atx。
" :HeaderIncrease 类似于:HeaderDecrease ，但是增加级别。
" :SetexToAtx 将缓冲区中的所有Setex样式标头转换为Atx。
" :Toc 创建带有标题的quickfix垂直窗口可导航目录。
" :Toch:与:Toc相同,但在水平窗口中。
" :Toct 与:Toc相同,但在新选项卡中。
" :Tocv 与:Toc相同,用于与:Toch和:Tocv对称。
" :InsertToc: 在当前行插入目录。可选参数可用于指定要在目录中显示多少级的标题，例如，使用:InsertToc 3最多显示h3并包括h3。
" :InsertNToc 同:InsertToc ,但显示目录为一个有序号列表。
"
nnoremap <leader>mt :Toc<CR><Esc>

set conceallevel=2

nmap <leader>gx  <Plug>Markdown_EditUrlUnderCursor
nnoremap <leader>mv :set conceallevel=2<CR><Esc>
nnoremap <leader>me :set conceallevel=0<CR><Esc>

" table
nnoremap <leader>tf :TableFormat<CR><Esc>

" Markdown preview
" nmap  <F12> <Plug>MarkdownPreview
" imap  <F12> <Plug>MarkdownPreview
" nmap  <leader><F12> <Plug>StopMarkdownPreview
" imap  <leader><F12> <Plug>StopMarkdownPreview

nmap  <leader>mp  <Plug>MarkdownPreview
nmap  <leader>ms <Plug>StopMarkdownPreview

" To disable conceal regardless of conceallevel setting, add the following to your .vimrc:
" let g:vim_markdown_conceal = 0

"To disable math conceal with LaTeX math syntax enabled, add the following to your .vimrc:
" let g:tex_conceal = ""
" let g:vim_markdown_math = 1

" Disabling conceal for code fences requires an additional setting:
" let g:vim_markdown_conceal_code_blocks = 0

" vim-markdown的concealcursor特性与indentLine冲突
" let g:indentLine_concealcursor = "nc"
let g:indentLine_concealcursor = ''


" 斜体字显示不全,https://blog.csdn.net/happycodefly/article/details/87438877
" set guifont=Courier_New:h12

let g:vim_markdown_math = 1                                 "LaTeX语法
" let g:vim_markdown_auto_extension_ext ='txt'                "更改默认文件扩展名
" let g:vim_markdown_no_default_key_mappings = 1              "禁用默认键映射，此时default的指令不可用
let g:vim_markdown_folding_disabled = 0                     "禁用折叠，取消则打开时默认白折叠所有标题

" let g:vim_markdown_folding_style_pythonic = 1               "更改折叠样式-类似python-mode的样式折叠
let g:vim_markdown_override_foldtext = 0                    "为了防止设置折叠文本

let g:vim_markdown_folding_level = 2                        "设置折叠级别-标题折叠级别是1到6之间的数字
let g:vim_markdown_toc_autofit = 0                          "启用TOC窗口自动调整
let g:vim_markdown_emphasis_multiline = 0                   "限制单行文本
" let g:vim_markdown_fenced_languages = ['csharp=cs']         "代码块语言-默认值为['c++ = cpp','viml = vim','bash = sh','ini = dosini']
let g:vim_markdown_strikethrough = 1                        "使用删除线
" let g:vim_markdown_no_extensions_in_markdown = 1

let g:vim_markdown_frontmatter = 1

let g:vim_markdown_toml_frontmatter = 1

let g:vim_markdown_autowrite = 1

" tab, vsplit, hsplit, current
let g:vim_markdown_edit_url_in = 'vsplit'

"" markdown-drawer
nnoremap <Leader>md :MarkDrawer<cr>

" Keys Mappings
" o navigate to header in file.
" D mark section for cut (no effect till paste).
" p paste previously marked section below current.
" + increase header size (removes #).
" - decrease header size (adds #).

let g:markdrawer_prefix = " "
let g:markdrawer_goto = "o"
let g:markdrawerDelete = "D"
let g:markdrawer_width = "25"
let g:markdrawer_paste_below = "p"
let g:markdrawer_increase = "+"
let g:markdrawer_decrease = "-"
let g:markdrawer_to_delete_color = "Red"

let g:markdrawer_drawer_max_levels = 3 " max levels to display
let g:markdrawer_toc = 'index' " displays as a TOC
" let g:markdrawer_toc = 'full_index' " displays as a TOC, no index reset

