 " *** Plugin settings *** 
 " NERDTree settings
 " https://www.cnblogs.com/YunyaSir/p/15495912.html#_caption_5
 " 隠しファイルをデフォルトで表示させる
 let g:NERDTreeShowHidden = 1

 " ブックマークを最初から表示
 let g:NERDTreeShowBookmarks=1

 " 以下のファイルは vim からは見たくない
 let NERDTreeIgnore = ['.[oa]$', '.cm[aiox]$', '.cmxa$', '.(aux|bbl|blg|dvi|log)$', '.(tgz|gz|zip)$', 'Icon' ]


 " book mark file
 let g:NERDTreeBookmarksFile=$DROPBOX . '/tmp/.nerdtree-bookmarks'

 " NERDTreeでルートを変更したらchdirする
 let g:NERDTreeChDirMode = 2

" -- 自动开启nerdtree
"autocmd vimenter * NERDTree 

" -- 设定nerdtree的窗口大小
 " let g:NERDTreeWinSize = 25

" -- 打开nvim时若没有任何文件，则自动打开nerdtree
"autocmd vimenter * if !argc()|NERDTree|endif

" -- 当nerdtree为唯一视窗时，自动关闭
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" -- 每次打开一个新的标签，都默认打开nerdtree
" autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif

" -- 设置树的图标,以区分已打开或未打开
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" -- 是否显示行号
let g:NERDTreeShowLineNumbers=1

" -- 让nerdtree更漂亮
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

" -- nerdtree的git文件状设置
let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'✹',
                \ 'Staged'    :'✚',
                \ 'Untracked' :'✭',
                \ 'Renamed'   :'➜',
                \ 'Unmerged'  :'═',
                \ 'Deleted'   :'✖',
                \ 'Dirty'     :'✗',
                \ 'Ignored'   :'☒',
                \ 'Clean'     :'✔︎',
                \ 'Unknown'   :'?',
                \ }
