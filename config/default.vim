" // n  普通模式
" // v  可视模式
" // i 插入模式
" // c 命令行模式
" // h 在帮助文件里，以上所有模式
" // a 以上所有模式
" // r 跳过|lit-enter|提示
" // A 在可是模式下自动选择
set mouse=ncv
" set mouse=a

" 开启实时搜索功能
set incsearch
" 搜索时大小写不敏感 set ignorecase " 关闭兼容模式
" set nocompatible
" vim 自身命令行模式智能补全
set wildmenu
" disable the terminal blink
set novisualbell
set noerrorbells

" 自适应不同语言的智能缩进
filetype plugin indent on    " 时打开基于文件类型的插件和缩进
syntax enable

"" ================  Code Flolding ==============""
"" 基于缩进或语法进行代码折叠
" vim 自身支持多种折叠：手动建立折叠（manual）、
" 基于缩进进行折叠（indent）、基于语法进行折叠（syntax）、
" 未更改文本构成折叠（diff
" "set foldmethod=indent
set foldmethod=syntax
" " 启动 vim 时关闭折叠代码
set nofoldenable

" Refer https://medium.com/@Aenon/vim-swap-backup-undo-git-2bf353caa02f
" " バックアップファイルを作らない
" set nobackup
set backupdir=/tmp/
" undo directory
" set noundofile
set undodir=/tmp/
" 结尾的//表示生成的文件名带有绝对路径，路径中用%替换目录分隔符，这样可以防止文件重名
" " スワップファイルを作らない
" set noswapfile
set directory=/tmp//
" " 編集中のファイルが変更されたら自動で読み直す
set autoread    " 打开文件监视。如果在编辑过程中文件发生外部改变（比如被别的编辑器编辑了），就会发出提示
" " バッファが編集中でもその他のファイルを開けるように
set hidden
" " 入力中のコマンドをステータスに表示する
" Show (partial) command in status line.
set showcmd
" 自动切换工作目录。这主要用在一个 Vim 会话之中打开多个文件的情况，默认的工作目录是打开的第一个文件的目录。
" 该配置可以将工作目录自动切换到，正在编辑的文件的目录。
set autochdir

" " 見た目系
" " 行番号を表示
set number
" " 現在の行を強調表示
set cursorline
" " 現在の行を強調表示（縦）
" set cursorcolumn
" " 行末の1文字先までカーソルを移動できるように
set virtualedit=onemore
" " インデントはスマートインデント
set smartindent
" コマンドラインの補完
set wildmode=list:longest,full
" " 折り返し時に表示行単位での移動できるようにする
" 设置行宽，即一行显示多少个字符。
" set textwidth=80 Important, do not set this value, please mannually control the length
" Because it will influence the indent when use auto format, the return

set colorcolumn=120
" 自动折行，即太长的行分成几行显示
set wrap

" 出错时，不要发出响声。
set noerrorbells
" " ビープ音を可視化
set visualbell
"  Vim 需要记住多少次历史操作
set history=1000


" " Tab系
" " 不可視文字を可視化(タブが「▸-」と表示される)
set list listchars=tab:\▸\-    " 如果行尾有多余的空格（包括 Tab 键），该配置将让这些空格显示成可见的小方块
" " Tab文字を半角スペースにする
" 把制表符转换为多个空格，具体空格数量参考 tabstop 和 shiftwidth 变量
" 该设置自动将 Tab 转为空格
set expandtab
" " 行頭以外のTab文字の表示幅（スペースいくつ分）
" 设置编辑时制表符占用空格数
" tabstop 指定我们在插入模式下输入一个制表符占据的空格数量
set tabstop=4    " 按下 Tab 键时，Vim 显示的空格数。
" " 行頭でのTab文字の表示幅
" 在文本上按下>>（增加一级缩进）、<<（取消一级缩进）或者==（取消全部缩进）时，每一级的字符数
" 设置格式化时制表符占用空格数 " 缩进格式
set shiftwidth=4
" 让 vim 把连续数量的空格视为一个制表符
"  expandtab "  已经把制表符转换为空格，当你要删除制表符时你得连续删除多个空格，
"  该设置就是告诉 vim 把连续数量的空格视为一个制表符，即，只删一个字符即可
set softtabstop=4
" retab 命令，让 vim 按上述规则重新处理制表符与空格关系。

" " 検索系 search
" " 検索文字列が小文字の場合は大文字小文字を区別なく検索する
set ignorecase
" " 検索文字列に大文字が含まれている場合は区別して検索する
set smartcase    " 如果同时打开了ignorecase，那么对于只有一个大写字母的搜索词，将大小写敏感；其他情况都是大小写不敏感。比如，搜索Test时，将不匹配test；搜索test时，将匹配Test

" " 検索文字列入力時に順次対象文字列にヒットさせる
set incsearch    " 输入搜索模式时，每输入一个字符，就自动跳到第一个匹配的结果
" " 検索時に最後まで行ったら最初に戻る
set wrapscan

" " 括弧入力時の対応する括弧を表示
set showmatch

" ["+y]でクリップボードにコピー
set clipboard=unnamed,autoselect

" Status line
set ruler    " 在状态栏显示光标的当前位置（位于哪一行哪一列）

" vim-gitgutter settings
set updatetime=100

"" =========== VIM System config==============
" Reload vim config file
" source ~/.vimrc
" 让配置变更立即生效
"autocmd BufWritePost $MYVIMRC source $MYVIMRC

" Spell check
" set spell spelllang=en_us    " 打开英语单词的拼写检查

" auto save, this function not yet test
" autocmd TextChanged,TextChangedI <buffer> silent write

" PlugClean -> uninstall the commened plugins


