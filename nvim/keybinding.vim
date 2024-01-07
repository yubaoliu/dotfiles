"===============Neotree=========
noremap  <F2> <Esc>:Neotree toggle<CR><Esc>

" Key map
" <k0> - <k9> 小键盘 0 到 9
" <S-...> Shift＋键
" <C-...> Control＋键
" <M-...> Alt＋键 或 meta＋键
" <A-...> 同 <M-...>
" <Esc> Escape 键
" <Up> 光标上移键
" <Space> 插入空格
" <Tab> 插入Tab
" <CR> 等于<Enter>

" Function key
" F1 -> help
" F10 -> not work
" nnoremap <F2> :NERDTreeToggle<CR>
" nnoremap <silent><F5> :NERDTreeToggle<CR>
" nnoremap <F3> :Autoformat<CR>
" nmap <F4> :TagbarToggle<CR>
" map <F4> :call Toggle_ycm <CR>
" nnoremap <F8> :UndotreeToggle<cr>

" 括号补全, bracket
" inoremap { {<ENTER>}<UP><RIGHT><ENTER>
" inoremap ( ()<ESC>i
" inoremap [ []<ESC>i
" inoremap ' ''<ESC>i
" inoremap " ""<ESC>i

" " ESC連打でハイライト解除
nmap <Esc><Esc> :nohlsearch<CR><Esc>

""============= INDENT ================""
noremap <tab> <Esc>V>
noremap <s-tab> <Esc>V<

" compatible with emacs
noremap <M-x> <Esc>

"" ============= HELP  ==============""
"scroll-cursor
":help changelist
":help keyword - open help for keyword
"K - open man page for word under the cursor
" noremap <Leader>K <Esc>K<CR>

":map-commands
":help colorcolumn
" :help indent-guides
" noremap <Leader>help  <Esc>:help<CR>

" Recommended key-mappings.
" <CR>: close popup and save indent.
" inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
" function! s:my_cr_function()
"     return neocomplcache#smart_close_popup() . "\<CR>"
" endfunction
" <TAB>: completion.
" inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

" <C-h>, <BS>: close popup and delete backword char.
" inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
" inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
" inoremap <expr><C-y>  neocomplcache#close_popup()
" inoremap <expr><C-e>  neocomplcache#cancel_popup()

"" ===========MOTION================
" +N: Jump forward N lines
" -N: Jump backward N lines

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

"" Fold
" Try :help fold-expr and :help fold-commands for details
" 操作：za，打开或关闭当前折叠；zM，关闭所有折叠；zR，打开所有折叠
" zf：创建折叠
" zo：打开折叠
" zc：关闭折叠
" zR：打开所有
" zM：关闭所有
" zj：移动到下一个折叠
" zk：移动到上一个折叠
" noremap <Leader>za <Esc>za<CR>
" noremap <Leader>zc <Esc>zM<CR>
" noremap <Leader>zo <Esc>zR<CR>
" zr: reduces fold level throughout the buffer
" zR: opens all folds
" zm: increases fold level throughout the buffer
" zM: folds everything all the way
" za: open a fold your cursor is on
" zA: open a fold your cursor is on recursively
" zc: close a fold your cursor is on
" zC: close a fold your cursor is on recursively

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

"=============== BUFFERS ==========""
" Working with multiple files
" :e file - edit a file in a new buffer
" Buffer
" go to the next buffer
noremap <Leader>bn  <Esc>:bn<CR>
" go to the previous buffer
noremap <Leader>bp  <Esc>:bp<CR>
" delete a buffer (close a file)
noremap <Leader>bx  <Esc>:bd<CR>
" list all open buffers
noremap <Leader>bl  <Esc>:ls<CR>


""============ TAB PAGE ==========""
" Tabpage
" :tabnew or :tabnew {page.words.file} - open a file in a new tab
" Ctrl + wT - move the current split window into its own tab
noremap <Leader>wT <Esc><C-w>T<CR>
" create
noremap <Leader>tc <Esc>:tabnew<CR>
" :tabclose or :tabc - close the current tab and all its windows
noremap <Leader>tx <Esc>:tabclose<CR>
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
" :saveas file - save file as
" :new <file> 在新窗口中打开文件
" split window
" Ctrl + wv - split window vertically
noremap <Leader>\| <Esc>:vsplit<CR>
" noremap <Leader>" <Esc>:vsplit<CR>
" Ctrl + ws - split window
noremap <Leader>- <Esc>:split<CR>

"" quit the windows
" :close - close current pane!
" noremap <Leader>pc <Esc>:close<CR>
" Ctrl + wq - quit a window
noremap <Leader>wc <Esc><C-w>c<CR>
" Ctrl + wo - quit all other windows
noremap <Leader>wo <Esc><C-w>o<CR>

" Switch window
" Ctrl + ww - switch windows
noremap <Leader>ws <Esc><C-w>w<CR>
" Ctrl + wh - move cursor to the left window (vertical split)
noremap <Leader>wh <Esc><C-w>h<CR>
" Ctrl + wl - move cursor to the right window (vertical split)
noremap <Leader>wl <Esc><C-w>l<CR>
" Ctrl + wj - move cursor to the window below (horizontal split)
noremap <Leader>wj <Esc><C-w>j<CR>
" Ctrl + wk - move cursor to the window above (horizontal split)
noremap <Leader>wk <Esc><C-w>k<CR>

" noremap <Leader>wL <Esc><C-w>L<CR>
" noremap <Leader>wH <Esc><C-w>H<CR>
" noremap <Leader>wJ <Esc><C-w>J<CR>
" noremap <Leader>wK <Esc><C-w>K<CR>


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

"" ============== Plugin [vim-fswitch] ===============""
" " *.cpp 和 *.h 间切换
" https://github.com/derekwyatt/vim-fswitch/blob/master/doc/fswitch.txt
" Switch to the file and load it into the current window
" noremap <silent> <Leader>sw :FSHere<cr>
nmap <Leader>fh :FSHere<cr>
"Switch to the file and load it into the window on the right >
" nmap <silent> <Leader>fr :FSRight<cr>
"Switch to the file and load it into a new window split on the right >
nmap <Leader>fr :FSSplitRight<cr>
"Switch to the file and load it into the window on the left >
" nmap <silent> <Leader>fl :FSLeft<cr>
" Switch to the file and load it into a new window split on the left >
nmap <Leader>fl :FSSplitLeft<cr>
" Switch to the file and load it into the window above >
" nmap <silent> <Leader>fa :FSAbove<cr>
" Switch to the file and load it into a new window split above >
nmap <Leader>fa :FSSplitAbove<cr>
" Switch to the file and load it into the window below >
" nmap <silent> <Leader>fb :FSBelow<cr>
" Switch to the file and load it into a new window split below >
nmap <Leader>fb :FSSplitBelow<cr>


" 快捷键 i 开/关缩进可视化
noremap <Leader>it <Plug>IndentGuidesToggle

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
"wb: write buffer
noremap <Leader>wb <Esc>:w<CR>
":w !sudo tee % - write out the current file using sudo
noremap <Leader>w! <Esc>:w!<CR>
":wq or :x or ZZ - write (save) and quit
noremap <Leader>wq <Esc>:wq<CR>
":q - quit (fails if there are unsaved changes)
noremap <Leader>q <Esc>:q<CR>
":q! or ZQ - quit and throw away unsaved changes
noremap <Leader>q! <Esc>:q!<CR>
":wqa - write (save) and quit on all tabs
noremap <Leader>qa <Esc>:qall!<CR>

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

" Type <C-e> to launch


" 禁用上方的preview窗口
set completeopt=menu,menuone

" Snippets
" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger="<TAB>"
" let g:UltiSnipsJumpForwardTrigger="<c-m-n>"
" let g:UltiSnipsJumpBackwardTrigger="<c-m-p>"

" disable record
" nnoremap Q q
" nnoremap q <Nop>
noremap <Leader>Q q
noremap q <Nop>

