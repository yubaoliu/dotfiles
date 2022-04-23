"=============YouCompleteMe Begin=============
" https://ycm-core.github.io/YouCompleteMe/
"In essence, YCM obsoletes the following Vim plugins because it has all of their features plus extra: clang_complete AutoComplPop Supertab neocomplcache
" use jumplist, C-o and C-I to jump
" Install: ./install.py --clang-completer --omnisharp-completer  system-libclang --system-boost
" Install: ./install.py --all
" YcmRestartServer
"set runtimepath+=~/.vim/plugged/YouCompleteMe
" 设置.ycm_extra_conf.py的全局路径，避免每次都需要复制到当前目录.若为空则每次都需复制.ycm_extra_conf.py文件到当前目录
let g:ycm_global_ycm_extra_conf='~/dotfiles/.ycm_extra_conf.py'

let g:ycm_auto_trigger = 1

" 如果不设为空，会在光标函数处显示函数说明
let g:ycm_auto_hover = ''
let g:ycm_enable_diagnostic_highlighting = 1
let g:ycm_echo_current_diagnostic = 1

" 设置标识符补全的最大候选项数量，0表示没有限制
let g:ycm_max_num_identifier_candidates = 50

" 让YCM可以收集注释中的文字来分析以用于补全
let g:ycm_always_populate_location_list = 0

"注释与字符串中的内容也用于补全
let g:ycm_collect_identifiers_from_comments_and_strings = 1 

" 打开字符串自动补全功能
let g:ycm_complete_in_strings = 1                           " 在字符串输入中也能补全

" 补全功能在注释中同样有效，1表示打开
let g:ycm_complete_in_comments = 1                          " 在注释输入中也能补全

" 设置几个字符开始补全
let g:ycm_min_num_identifier_candidate_chars = 2

" 使用vim的语法标识符来建立标识符数据库
let g:ycm_seed_identifiers_with_syntax = 1

" 将数据从Vim发送到.ycm_extra_conf.py文件中的FlagsForFile函数
let g:ycm_extra_conf_vim_data = []

" 为ycm服务器指定特定的python解释器，默认为空表示在系统上搜索适当的Python解释器
let g:ycm_server_python_interpreter = ''

" YCM关闭时保存日志，0表示关闭
let g:ycm_keep_logfiles = 0

" 设置YCM的日志记录级别，可以是debug，info，warning，error或critical。debug是最详细的
let g:ycm_log_level = 'info'

" 设置当vim打开c#文件时，OmniSharp server自动开启，0代表不自动开启
" let g:ycm_auto_start_csharp_server = 1

" 设置当vim关闭c#文件时，OmniSharp server自动关闭，0代表不自动关闭
" let g:ycm_auto_stop_csharp_server = 1

" 指定OmniSharp server的监视端口，0表示使用os自动提供的未使用的端口
" let g:ycm_csharp_server_port = 0

" 默认c#中插入命名空间时自动在最近的using语句下插入using语句，如要插入到其他地方则设置该选项
" let g:ycm_csharp_insert_namespace_expr = ''

" 为当前补全选项在vim顶部增加预览窗口，用来显示函数原型等信息，如果vim的completeopt已经设置为prieview则不会有影响，:h completeopt查看相关信息，用:set completeopt?查看当前vim的设置，默认为0
let g:ycm_add_preview_to_completeopt = 0

" 选中补全选项后自动关闭预览窗口，当g:ycm_add_preview_to_completeopt设为1时或者vim的completeopt设为preview有效
let g:ycm_autoclose_preview_window_after_completion = 1

" 离开插入模式后自动关闭预览窗口，当g:ycm_add_preview_to_completeopt设为1时或者vim的completeopt设为preview有效
let g:ycm_autoclose_preview_window_after_insertion = 1

" 此选项控制在文件中检测到错误或警告时向用户显示的最大诊断数
let g:ycm_max_diagnostics_to_display = 30

" 设置用于选择补全列表中的第一个选项以及进入补全列表后向下选择的快捷键，默认为tab键和方向下键
let g:ycm_key_list_select_completion=['<c-n>']
" let g:ycm_key_list_select_completion = ['<TAB>', '<Down>']
" let g:ycm_key_list_select_completion = ['<c-n>', '<Down>']  " 没有这个会拦截掉tab, 导致其他插件的tab不能用.

" 设置用于向上选择补全列表中的选项的快捷键，默认为shift+tab，和方向上键
let g:ycm_key_list_previous_completion=['<c-p>']
" let g:ycm_key_list_previous_completion = ['<S-TAB>', '<Up>']
" let g:ycm_key_list_previous_completion = ['<c-p>', '<Up>']

" 设置用于关闭补全列表的快捷键，默认为ctrl+y
" let g:ycm_key_list_stop_completion = ['<C-y>']

" 设置强制启用语义补全的快捷键，有些系统函数如fopen, strcpy如果不智能提示，可以按+键
" let g:ycm_key_invoke_completion = ['<c-.>'

" 设置查看光标停留处的错误诊断详细信息的快捷键,默认为\d
" let g:ycm_key_detailed_diagnostics = '<leader>d'

" 允许自动加载.ycm_extra_conf.py，不再提示 ，设置为1，则每次都提示用于确认该文件是否安全
let g:ycm_confirm_extra_conf = 0

" 设置加载 .ycm_extra_conf.py的路径，*表示匹配任何字符，?匹配任何单个字符，[seq] 匹配seq中的任何单个字符，[!seq] 匹配不在seq中的任何单个字符，路径前加！表示不加载所有改路径上匹配的文件
let g:ycm_extra_conf_globlist = []

" 设置YCM的文件名补全时，相对路径是按照vim的当前工作目录还是活动缓冲区中的文件所在目录来解释。0是按照文件所在目录。
" let g:ycm_filepath_completion_use_working_dir = 0

" 某些omni补全引擎引起与YCM缓存不适配，可能不会为给定的前缀产生所有可能的结果，如果关闭该选项则每次都重新查询omni补全引擎生成匹配项 ，默认为1代表开启
" let g:ycm_cache_omnifunc = 1

" 启用ultisnips补全，1代表允许
" let g:ycm_use_ultisnips_completer = 1

" 设置YCM的作用的文件大小上限，单位为Kb，0表示无上限
let g:ycm_disable_for_files_larger_than_kb = 1000

" 指定用来运行jedi补全库的Python解释器。默认情况下与ycm服务器使用相同的解释器
let g:ycm_python_binary_path = 'python'

" 设置使用goto跳转快捷键时，新窗口的打开方式可以设置为’same-buffer’, ‘horizontal-split’, ‘vertical-split’, 'new-tab’或 ‘new-or-existing-tab’
let g:ycm_goto_buffer_command = 'vertical-split' "[ 'same-buffer', 'horizontal-split', 'vertical-split', 'new-tab', 'new-or-existing-tab' ]

" 在代码中高亮显示YCM诊断对应的内容，如果关闭，则会关闭错误和警告高亮功能，0表示关闭
let g:ycm_enable_diagnostic_signs = 1

" 在代码中高亮显示YCM诊断对应的内容，如果关闭，则会关闭错误和警告高亮功能，0表示关闭
let g:ycm_enable_diagnostic_signs = 1

" 每次获取新诊断数据时自动填充位置列表，1表示打开，默认关闭以免干扰可能已放置在位置列表中的其他数据。在vim中用:help " location-list命令查看位置列表的具体解释
let g:ycm_filter_diagnostics={}

" 在强制编译后自动打位置列表并用诊断信息填充，所谓位置列表就是标出各错误或警告对应在哪些行的小窗口，可以实现直接跳转到错误行
let g:ycm_open_loclist_on_ycm_diags = 1

" 开启tags补全引擎 ，在vim中用:h 'tags’命令来查看相关信息，只支持ctags，切必须使用--fields=+l选项
let g:ycm_collect_identifiers_from_tags_files = 1

" 开启YCM的显示诊断信息的功能，0表示关闭
let g:ycm_show_diagnostics_ui = 1                           " 禁用语法检查

let g:ycm_error_symbol = '!!'
let g:ycm_warning_symbol = '!'

"inoremap <expr> <CR> pumvisible() ? '\<C-y>' : '\<CR>' |             "回车即选中当前项
"let g:syntastic_ignore_files=[".*\.py$"]

" unknown
" set completeopt=menu,menuone
" set completeopt-=preview

" " 设置YCM的语义触发器的关键字
let g:ycm_semantic_triggers =  {
  \   'c' : ['->', '.'],
  \   'objc' : ['->', '.', 're!\[[_a-zA-Z]+\w*\s', 're!^\s*[^\W\d]\w*\s',
  \             're!\[.*\]\s'],
  \   'ocaml' : ['.', '#'],
  \   'cpp,objcpp' : ['->', '.', '::'],
  \   'perl' : ['->'],
  \   'php' : ['->', '::'],
  \   'cs,java,javascript,typescript,d,python,perl6,scala,vb,elixir,go' : ['.'],
  \   'ruby' : ['.', '::'],
  \   'lua' : ['.', ':'],
  \   'erlang' : [':'],
  \ }

" 文件类型黑名单，vim打开这些类型文件时会关闭YCM
let g:ycm_filetype_blacklist = {
    \ 'tagbar' : 1,
    \ 'qf' : 1,
    \ 'notes' : 1,
    \ 'unite' : 1,
    \ 'text' : 1,
    \ 'vimwiki' : 1,
    \ 'pandoc' : 1,
    \ 'infolog' : 1,
    \ 'mail' : 1,
    \ 'vimrc': 1,
    \}

" 对特定文件类型禁用文件路径补全
let g:ycm_filetype_specific_completion_to_disable = {
     \ 'gitcommit': 1
     \}

" 文件类型白名单，vim打开这些类型文件时会开启YCM。*表示所有文件类型
" let g:ycm_filetype_whitelist = { '*': 1 }
let g:ycm_filetype_whitelist = { 
  \ 'c' : 1,
  \ 'cpp' : 1, 
  \ 'py' : 1,
  \ 'sh' : 1,
  \ 'zsh': 1,
  \ 'hpp' : 1,
  \ 'h' : 1,
  \ 'md' : 1,
  \ 'markdown' : 1,
  \ 'txt' : 1,
\ }

" Toggle YouCompleteMe on and off with F4
function Toggle_ycm()
    if g:ycm_show_diagnostics_ui == 0
        let g:ycm_auto_trigger = 1
        let g:ycm_show_diagnostics_ui = 1
        :YcmRestartServer
        :e
        :echo "YCM on"
    elseif g:ycm_show_diagnostics_ui == 1
        let g:ycm_auto_trigger = 0
        let g:ycm_show_diagnostics_ui = 0
        :YcmRestartServer
        :e
        :echo "YCM off"
    endif
endfunction
map <F4> :call Toggle_ycm <CR>

" 设置YCM的语义触发器的关键字
let g:ycm_semantic_triggers =  {
  \   'c' : ['->', '.'],
  \   'objc' : ['->', '.', 're!\[[_a-zA-Z]+\w*\s', 're!^\s*[^\W\d]\w*\s',
  \             're!\[.*\]\s'],
  \   'ocaml' : ['.', '#'],
  \   'cpp,objcpp' : ['->', '.', '::'],
  \   'perl' : ['->'],
  \   'php' : ['->', '::'],
  \   'cs,java,javascript,typescript,d,python,perl6,scala,vb,elixir,go' : ['.'],
  \   'ruby' : ['.', '::'],
  \   'lua' : ['.', ':'],
  \   'erlang' : [':'],
  \ }

" 文件类型黑名单，vim打开这些类型文件时会关闭YCM
let g:ycm_filetype_blacklist = {
    \ 'tagbar' : 1,
    \ 'qf' : 1,
    \ 'notes' : 1,
    \ 'unite' : 1,
    \ 'text' : 1,
    \ 'vimwiki' : 1,
    \ 'pandoc' : 1,
    \ 'infolog' : 1,
    \ 'mail' : 1,
    \ 'vimrc': 1,
    \}

" 对特定文件类型禁用文件路径补全
let g:ycm_filetype_specific_completion_to_disable = {
     \ 'gitcommit': 1
     \}

" 文件类型白名单，vim打开这些类型文件时会开启YCM。*表示所有文件类型
" let g:ycm_filetype_whitelist = { '*': 1 }
let g:ycm_filetype_whitelist = { 
  \ 'c' : 1,
  \ 'cpp' : 1, 
  \ 'py' : 1,
  \ 'sh' : 1,
  \ 'zsh': 1,
  \ 'hpp' : 1,
  \ 'h' : 1,
  \ 'md' : 1,
  \ 'markdown' : 1,
  \ 'txt' : 1,
\ }


