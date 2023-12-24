" https://courses.cs.washington.edu/courses/cse451/10au/tutorials/tutorial_ctags.html
" https://github.com/szw/vim-tags
" Run tags: find . -type f -iname "*.[chS]" | xargs etags -a
" ctags -R *
nnoremap <silent> <Leader>co :TagbarOpenAutoClose<CR>

" C-]: jump to definition
" C-T: jump back

"If you want to have some custom settings valid only for the current project
set exrc
set secure

"" ============ Gnutentags ===================""
""gutentags
" gutentags搜索工程目录的标志，碰到这些文件/目录名就停止向上一级目录递归 "
let g:gutentags_project_root = ['.root', '.svn', '.git', '.project']

" 所生成的数据文件的名称 "
let g:gutentags_ctags_tagfile = '.tags'

" 将自动生成的 tags 文件全部放入 ~/.cache/tags 目录中，避免污染工程目录 "
let s:vim_tags = expand('~/.cache/tags')
let g:gutentags_cache_dir = s:vim_tags
" 检测 ~/.cache/tags 不存在就新建 "
if !isdirectory(s:vim_tags)
    silent! call mkdir(s:vim_tags, 'p')
endif

" 配置 ctags 的参数 "
" let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extra=+q']
let g:gutentags_ctags_extra_args = ['--fields=+lniazS', '--extra=+q']
let g:gutentags_ctags_extra_args += ['--c++-kinds=+pxI']
let g:gutentags_ctags_extra_args += ['--c-kinds=+px']

let g:vim_tags_auto_generate = 1
let g:tagbar_autoclose = 0

let g:vim_tags_ignore_files = ['.gitignore', '.svnignore', '.cvsignore', '.vim', '.conf']

" Ctrl+] - go to definition
" Ctrl+T - Jump back from the definition.
" Ctrl+W Ctrl+] - Open the definition in a horizontal split

" map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
" map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>

" Ctrl+\ - Open the definition in a new tab
" Alt+] - Open the definition in a vertical split

" Ctrl+Left MouseClick - Go to definition
" Ctrl+Right MouseClick - Jump back from definition

" Taglist
" let Tlist_Auto_Open=1
" set tags = tags
" let  list_Ctags_Cmd = "/usr/bin/ctags"
" let Tlist_Show_One_File = 1
" letkTlist_Use_Right_Window = 1
" let Tlist_Exit_OnlyWindow = 1


