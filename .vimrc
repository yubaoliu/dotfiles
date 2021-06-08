call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'tyru/caw.vim'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'edkolev/tmuxline.vim'
Plug 'tpope/vim-surround'
Plug 'mbbill/undotree'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'Shougo/neocomplcache'
" Plug 'Shougo/neocomplete'
Plug 'Xuyuanp/nerdtree-git-plugin'    " doesn't work (2019/4/14)
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'previm/previm'
Plug 'regedarek/ZoomWin'
Plug 'preservim/nerdcommenter'
Plug 'liuchengxu/vim-which-key' 
" Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }]}
Plug 'chiel92/vim-autoformat'
" visually displaying indent levels 
Plug 'nathanaelkane/vim-indent-guides'
"switching between companion source files (e.g. .h and .cpp)
Plug 'derekwyatt/vim-fswitch'    
Plug 'vim-scripts/DoxygenToolkit.vim'
" On-demand lazy load
" Plug 'justmao945/vim-clang'
" Plug 'zxqfl/tabnine-vim'    " very heavy, much memory need
call plug#end()

""===============REFERENCE=============""
" Help wesites
" cheat sheet: https://vim.rtorr.com/
" plugin: https://vimawesome.com/
" https://github.com/yangyangwithgnu/use_vim_as_ide
" https://www.yiibai.com/vim/vim_markers.html

""============== SYMBALS ===========""
" ` - 后退引号 

"" ============= GLOBAL ==============""
let mapleader = "\<Space>"  
" compatible with emacs
noremap <M-x> <Esc>


"" ============= HELP  ==============""
"scroll-cursor
":help changelist
":help keyword - open help for keyword
"K - open man page for word under the cursor
noremap <Leader>K <Esc>K<CR>
":map-commands
":help colorcolumn
" :help indent-guides
noremap <Leader>help  <Esc>:help<CR>

""=============== FONT ===============""
"文字コード変更
set encoding=utf-8
set fileencodings=utf-8
set fileformats=unix,dos,mac
" "文字コードをUFT-8に設定
set fenc=utf-8

"" ============= COLOR  ==============""
" 自動補完の色設定
set pumheight=10
hi Pmenu ctermbg=black ctermfg=white guifg=#000000 guibg=#999999
hi PmenuSel ctermbg=blue ctermfg=white
hi PmenuSbar ctermbg=0 ctermfg=9
hi PmenuSbar ctermbg=255 ctermfg=0 guifg=#000000 guibg=#FFFFFF

""============= INDENT ================""
noremap <tab> <Esc>V>
noremap <s-tab> <Esc>V<

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
" 操作：za，打开或关闭当前折叠；zM，关闭所有折叠；zR，打开所有折叠
noremap <Leader>fa <Esc>za<CR>
noremap <Leader>fc <Esc>zM<CR>
noremap <Leader>fo <Esc>zR<CR>

""=========== MARKS ===============""
" m{bookmark-name}
" `{bookmark-name} - 移动到书签的确切位置 
" ‘{bookmark-name} - 跳到书签行的开头
" :marks
" :delmarks {bookmark-name}
" :marks - list of marks
noremap <Leader>mks <Esc>:marks<CR>
" ma - set current position for mark A
noremap <Leader>ma <Esc>ma<CR>
" `a - jump to position of mark A
noremap <Leader>ja <Esc>`a<CR>
" y`a - yank text to position of mark A
noremap <Leader>ya <Esc>y`a<CR>
" `. – 跳转到最后一次执行改变的精确位置（行和列）
" ‘. – 跳转到最后一次执行改变的行起始位置



"" ==========OPEN CLOSE EXIT SAVE ================""
" :saveas file - save file as
" :close - close current pane!
noremap <Leader>close <Esc>:close<CR>

"" ======== Cursor movement =============""
" h - move cursor left
" j - move cursor down
" k - move cursor up
" l - move cursor right
" H - move to top of screen
" M - move to middle of screen
" L - move to bottom of screen
" w - jump forwards to the start of a word
" W - jump forwards to the start of a word (words can contain punctuation)
" e - jump forwards to the end of a word
" E - jump forwards to the end of a word (words can contain punctuation)
noremap E <END>a
" b - jump backwards to the start of a word
" B - jump backwards to the start of a word (words can contain punctuation)
" % - move to matching character (default supported pairs: '()', '{}', '[]' -
" use :h matchpairs in vim for more info)
" 0 - jump to the start of the line
" ^ - jump to the first non-blank character of the line
" $ - jump to the end of the line
" g_ - jump to the last non-blank character of the line
" gg - go to the first line of the document
" G - go to the last line of the document
" 5G - go to line 5
" fx - jump to next occurrence of character x
" tx - jump to before next occurrence of character x
" Fx - jump to previous occurence of character x
" Tx - jump to after previous occurence of character x
" ; - repeat previous f, t, F or T movement
" , - repeat previous f, t, F or T movement, backwards
" } - jump to next paragraph (or function/block, when editing code)
" { - jump to previous paragraph (or function/block, when editing code)
" zz - center cursor on screen
" Ctrl + e - move screen down one line (without moving cursor)
" Ctrl + y - move screen up one line (without moving cursor)
" C-b: Ctrl + b - move back one full screen 向上滚动整个页面
" C-f: Ctrl + f - move forward one full screen 向下滚动整个页面
" C-d: Ctrl + d - move forward 1/2 a screen
" C-u: Ctrl + u - move back 1/2 a screen

"=============== BUFFERS ==========""
" Working with multiple files
" :e file - edit a file in a new buffer
" Buffer
" go to the next buffer
noremap <Leader>bn  <Esc>:bn<CR>
" go to the previous buffer
noremap <Leader>bp  <Esc>:bp<CR>
" delete a buffer (close a file)
noremap <Leader>bd  <Esc>:bd<CR>
" list all open buffers
noremap <Leader>ls  <Esc>:ls<CR>


""============ TAB PAGE ==========""
" Tabpage 
" :tabnew or :tabnew {page.words.file} - open a file in a new tab
" Ctrl + wT - move the current split window into its own tab
noremap <Leader>wT <Esc><C-w>T<CR>
" create
noremap <Leader>tc <Esc>:tabnew<CR>
" :tabclose or :tabc - close the current tab and all its windows
noremap <Leader>td <Esc>:tabclose<CR> 
" gT or :tabprev or :tabp - move to the previous tab
noremap <Leader>tp <Esc>:tabprevious<CR>    
" gt or :tabnext or :tabn - move to the next tab
noremap <Leader>tn <Esc>:tabnext<CR>   
noremap <Leader>tl <Esc>:tablast<CR>   
noremap <Leader>tf <Esc>:tabfirst<CR>   
" #gt - move to tab number #
" :tabmove # - move current tab to the #th position (indexed from 0)
" :tabonly or :tabo - close all tabs except for the current one
" :tabdo command - run the command on all tabs (e.g. :tabdo q - closes all opened tabs)
" #gt: move tab, for example: 1gt

"" ============= WINDOWS ==============""
" :new <file> 在新窗口中打开文件 
" split window
" Ctrl + wv - split window vertically
noremap <Leader>\| <Esc>:vsplit<CR>   
" Ctrl + ws - split window
noremap <Leader>- <Esc>:split<CR>   
" Ctrl + wq - quit a window
noremap <Leader>wd <Esc><C-w>c<CR>   
" Ctrl + wo - quit all other windows
noremap <Leader>wx <Esc><C-w>o<CR>   

" Switch window
" Ctrl + ww - switch windows
noremap <Leader>ww <Esc><C-w>w<CR>   
" Ctrl + wh - move cursor to the left window (vertical split)
noremap <Leader>wh <Esc><C-w>h<CR>   
" Ctrl + wl - move cursor to the right window (vertical split)
noremap <Leader>wl <Esc><C-w>l<CR>   
" Ctrl + wj - move cursor to the window below (horizontal split)
noremap <Leader>wj <Esc><C-w>j<CR>   
" Ctrl + wk - move cursor to the window above (horizontal split)
noremap <Leader>wk <Esc><C-w>k<CR>   

noremap <Leader>wL <Esc><C-w>L<CR>   
noremap <Leader>wH <Esc><C-w>H<CR>   
noremap <Leader>wJ <Esc><C-w>J<CR>   
noremap <Leader>wK <Esc><C-w>K<CR>   


" :sp file - open a file in a new buffer and split window
" :vsp file - open a file in a new buffer and vertically split window


""============ REGISTERS =============""
" Registers
" :reg - show registers content
" "xy - yank into register x
" "xp - paste contents of register x
" Tip Registers are being stored in ~/.viminfo, and will be loaded again on next
" restart of vim.
" Tip Register 0 contains always the value of the last yank command.

"" ================= VISUAL MODE ==========""
" Marking text (visual mode)
" v - start visual mode, mark lines, then do a command (like y-yank)
" V - start linewise visual mode
" o - move to other end of marked area
" Ctrl + v - start visual block mode
" O - move to other corner of block
" aw - mark a word
" ab - a block with ()
" aB - a block with {}
" ib - inner block with ()
" iB - inner block with {}
" Esc - exit visual mode


" Visual commands
" > - shift text right
" < - shift text left
" y - yank (copy) marked text
" d - delete marked text
" ~ - switch case
"


"" ============== Plugin [vim-fswitch] ===============""
" " *.cpp 和 *.h 间切换
noremap <silent> <Leader>sw :FSHere<cr>

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
" 快捷键 i 开/关缩进可视化
:nmap <silent> <Leader>it <Plug>IndentGuidesToggle



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
" " ステータスラインを常に表示
" " 是否显示状态栏。0 表示不显示，1 表示只在多窗口时显示，2 表示显示
set laststatus=2
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

" nnoremap j gj
" nnoremap k gk
"" Emacs style
" noremap <C-p> <Up>
" noremap <C-n> <Down>
" noremap <C-b> <Left>
" noremap <C-e> <END>
" noremap <C-d> <Del>
" noremap <C-k> <Esc>D
" noremap <C-a> <HOME>
"
" noremap! <C-p> <Up>
" noremap! <C-n> <Down>
" noremap! <C-b> <Left>
" noremap! <C-a> <HOME>
" noremap! <C-e> <END>
" noremap! <C-d> <Del>
" noremap! <C-k> <Esc>D


" change list
" g; - Go to [count] older position in change list.
" g, Go to [count] newer cursor position in change list. Just like |g;| but in the opposite direction.
"
"Editing
"r - replace a single character
"J - join line below to the current one with one space in between
"gJ - join line below to the current one without space in between
"gwip - reflow paragraph
"cc - change (replace) entire line
"C - change (replace) to the end of the line
"c$ - change (replace) to the end of the line
"ciw - change (replace) entire word
"cw - change (replace) to the end of the word
"s - delete character and substitute text
"S - delete line and substitute text (same as cc)
"xp - transpose two letters (delete and paste)
"u - undo
"Ctrl + r - redo
". - repeat last command

" Insert mode - inserting/appending text
" i - insert before the cursor
" I - insert at the beginning of the line
" a - insert (append) after the cursor
" A - insert (append) at the end of the line
" o - append (open) a new line below the current line
" O - append (open) a new line above the current line
" ea - insert (append) at the end of the word
" Esc - exit insert mode

"Cut and paste
"yy - yank (copy) a line
"2yy - yank (copy) 2 lines
"yw - yank (copy) the characters of the word from the cursor position to the start of the next word
"y$ - yank (copy) to end of line
"p - put (paste) the clipboard after cursor
"P - put (paste) before cursor
"dd - delete (cut) a line
"2dd - delete (cut) 2 lines
"dw - delete (cut) the characters of the word from the cursor position to the start of the next word
"D - delete (cut) to the end of the line
"d$ - delete (cut) to the end of the line
"x - delete (cut) character

"Exiting
":w - write (save) the file, but don't exit
noremap <Leader>w <Esc>:w<CR>
":w !sudo tee % - write out the current file using sudo
noremap <Leader>w! <Esc>:w!<CR>
":wq or :x or ZZ - write (save) and quit
noremap <Leader>wq <Esc>:wq<CR>
":q - quit (fails if there are unsaved changes)
noremap <Leader>q <Esc>:q<CR>
":q! or ZQ - quit and throw away unsaved changes
noremap <Leader>q! <Esc>:q!<CR>
":wqa - write (save) and quit on all tabs
noremap <Leader>qall <Esc>:qall!<CR>

"" Search and replace
"/pattern - search for pattern
"?pattern - search backward for pattern
"\vpattern - 'very magic' pattern: non-alphanumeric characters are interpreted
"as special regex symbols (no escaping needed)
"n - repeat search in same direction
"N - repeat search in opposite direction
":%s/old/new/g - replace all old with new throughout file
":%s/old/new/gc - replace all old with new throughout file with confirmations
":noh - remove highlighting of search matches

"Search in multiple files
":vimgrep /pattern/ {`{file}`} - search for pattern in multiple files
"e.g. :vimgrep /foo/ **/*
":cn - jump to the next match
":cp - jump to the previous match
":copen - open a window containing the list of matches

" Macros
" qa - record macro a
" q - stop recording macro
" @a - run macro a
" @@ - rerun last run macro



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
" " 検索語をハイライト表示
" https://stackoverflow.com/questions/7103173/vim-how-to-change-the-highlight-color-for-search-hits-and-quickfix-selection
 set hlsearch    " 搜索时，高亮显示匹配结果
 hi Search ctermbg=LightYellow
 hi Search ctermfg=Red
" " ESC連打でハイライト解除
 nmap <Esc><Esc> :nohlsearch<CR><Esc>
" " 括弧入力時の対応する括弧を表示
 set showmatch

 " ["+y]でクリップボードにコピー
 set clipboard=unnamed,autoselect


 " *** Plugin settings *** 
 
 " NERDTree settings
 " 隠しファイルをデフォルトで表示させる
 let g:NERDTreeShowHidden = 1
 " ブックマークを最初から表示
 let g:NERDTreeShowBookmarks=1
 " 以下のファイルは vim からは見たくない
 let NERDTreeIgnore = ['.[oa]$', '.cm[aiox]$', '.cmxa$', '.(aux|bbl|blg|dvi|log)$', '.(tgz|gz|zip)$', 'Icon' ]
 " book mark file
 let g:NERDTreeBookmarksFile=$DROPBOX . '/lib/vim/user/nerdtree-bookmarks'
 " NERDTreeでルートを変更したらchdirする
 let g:NERDTreeChDirMode = 2
 " Type <C-e> to launch
 nnoremap <silent><F5> :NERDTreeToggle<CR>

" caw.vim settings
nmap <C-K> <Plug>(caw:hatpos:toggle)
vmap <C-K> <Plug>(caw:hatpos:toggle)
nmap <C-I> <Plug>(caw:dollarpos:toggle)
vmap <C-I> <Plug>(caw:dollarpos:toggle)

" Status line
set ruler    " 在状态栏显示光标的当前位置（位于哪一行哪一列）

" vim-airline settings
let g:airline_powerline_fonts = 1
let g:airline_theme = 'bubblegum'

" tmuxlive.vim settings
let g:tmuxline_preset = {
      \'a'    : '#S',
      \'c'    : ['#(whoami)'],
      \'win'  : ['#I', '#W'],
      \'cwin' : ['#I', '#W', '#F'],
      \'x'    : ['#{battery_percentage} #{battery_icon}', '#{cpu_percentage} #{cpu_icon}'],
      \'y'    : ['%a', '%R'],
      \'z'    : '#H',
      \'options' : {'status-justify':'left'}}
let g:tmuxline_theme = 'papercolor'

" undotree settings
nnoremap <F8> :UndotreeToggle<cr>

" vim-gitgutter settings
set updatetime=100

" neocomplcache settings
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplcache_dictionary_filetype_lists = {
         \ 'default' : ''
         \ }
 
" Plugin key-mappings.
" inoremap <expr><C-g>     neocomplcache#undo_completion()
" inoremap <expr><C-l>     neocomplcache#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
" inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
" function! s:my_cr_function()
"     return neocomplcache#smart_close_popup() . "\<CR>"
" endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
" inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
" inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
" inoremap <expr><C-y>  neocomplcache#close_popup()
" inoremap <expr><C-e>  neocomplcache#cancel_popup()

" previm settings
let g:previm_open_cmd = 'google-chrome'
" let g:previm_open_cmd = 'open -a Firefox'
augroup PrevimSettings
    autocmd!
    autocmd BufNewFile,BufRead *.{md,mdwn,mkd,mkdn,mark*} set filetype=markdown
augroup END

" nerdcommenter
" Refer: https://qiita.com/pepo/items/09bacf98a36f6a7285ac
" ファイルタイプを参照するので
" NERD Commenterでコメント挿入した時、コメント記号の後にスペースを挿入してくれるようになる。
" コメントが見やすく見やすくなるのでオススメ
let g:NERDDefaultAlign='left' 
let g:NERDSpaceDelims=1


" vim-autoformat
nnoremap <F3> :Autoformat<CR>
let g:autoformat_autoindent = 0
let g:autoformat_retab = 0
let g:autoformat_remove_trailing_spaces = 0
let g:autoformat_verbosemode=0
" autocmd FileType c,cpp setlocal equalprg=clang-format
" autocmd FileType vim,tex let b:autoformat_autoindent=0
"" Python format
" pip install --upgrade autopep8

"" yapf
let g:formatter_yapf_style = 'pep8'

"" tyru/caw.vim config
" 行の最初の文字の前にコメント文字をトグル
nmap <Leader>c <Plug>(caw:hatpos:toggle)
vmap <Leader>c <Plug>(caw:hatpos:toggle)

" 行頭にコメントをトグル
nmap <Leader>, <Plug>(caw:zeropos:toggle)
vmap <Leader>, <Plug>(caw:zeropos:toggle)

"  plasticboy/vim-markdown 
let g:vim_markdown_folding_disabled = 1


""================== IDE setting for programming =============""

""=================== doxygentoolkit ============""
" let g:DoxygenToolKit_startCommentBlock = "/// "
" let g:DoxygenToolKit_interCommentBlock = "/// "

let g:DoxygenToolkit_briefTag_funcName = "yes"

" for C++ style, change the '@' to '\'
" let g:DoxygenToolkit_commentType = "C++"
" let g:DoxygenToolkit_briefTag_pre = "\\brief "
" let g:DoxygenToolkit_templateParamTag_pre = "\\tparam "
" let g:DoxygenToolkit_paramTag_pre = "\\param "
" let g:DoxygenToolkit_returnTag = "\\return "
" let g:DoxygenToolkit_throwTag_pre = "\\throw " " @exception is also valid
" let g:DoxygenToolkit_fileTag = "\\file "
" let g:DoxygenToolkit_dateTag = "\\date "
" let g:DoxygenToolkit_authorTag = "\\author "
" " let g:DoxygenToolkit_versionTag = "\\version "
" let g:DoxygenToolkit_blockTag = "\\name "
" let g:DoxygenToolkit_classTag = "@class "
let g:DoxygenToolkit_authorName = "yubaoliu89@gmail.com"
" let g:doxygen_enhanced_color = 1
"let g:load_doxygen_syntax = 1

let g:DoxygenToolkit_licenseTag="\<enter> This file is part of RDS-SLAM \<enter> Copyright (C) 2021, Yubao Liu, TOYOHASHI UNIVERSITY of TECHNOLOGY \<enter> ORB-SLAM3 is free software: you can redistribute it and/or modify it under the terms of the GNU General Public \<enter> License as published by the Free Software Foundation, either version 3 of the License, or \<enter> (at your option) any later version. \<enter> RDS-SLAM is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even \<enter> the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the \<enter> GNU General Public License for more details. \<enter> You should have received a copy of the GNU General Public License along with RDS-SLAM. \<enter> If not, see <http://www.gnu.org/licenses/>." 

"" ============ OTHERW ===================""
" " vim-clang settings
" let g:clang_c_options = '-std=c11'
" let g:clang_cpp_options = '-std=c++11 --pedantic-errors'
" let g:clang_format_auto = 1
" let g:clang_format_style = 'Google'
" let g:clang_check_syntax_auto = 1

" Spell check
" set spell spelllang=en_us    " 打开英语单词的拼写检查

" auto save, this function not yet test
" autocmd TextChanged,TextChangedI <buffer> silent write



