
" ==========================================
" GDB
" https://michaelthessel.com/go-vim-debugging-with-gdb/
" [Vim 调试：termdebug 入门](https://www.codeleading.com/article/95143882155/)
" [Debugging in Vim](https://www.dannyadam.com/blog/2019/05/debugging-in-vim/)
" [How to use ConqueGDB in Vim](https://gist.github.com/RobinCPC/228eceed32dea10f32e2b3d41ad930c8)
" [How does debugging with VIM and gdb?](https://medium.com/@948/how-does-debugging-with-vim-and-gdb-3ab5ed0dcd0f)
" Termdebug
":packadd termdebug

packadd termdebug
let g:termdebug_wide = 163

"assuing vim commands :Step, :Over, :Finish, :Continue, :Stop
"
" 1. file bin   加载名为 bin 的二进制文件
" 2. CTRL-C     中断程序
" 3. run/r      运行
" 4. next/n     执行当前行，停在下一行 （step over）
" 5. step/s     执行当前行，进入下一层函数 （step in）
" 6. finish     执行直至离开当前函数
" 7. where      显示栈
" 8. continue/c 继续执行
" 9. break/b N  在第 N 行加断点
" 10. break/b f  在函数 f 处加断点
" 11. delete     删除所有断点
"
" :Run [args]        运行程序，可带参数 [args]，或沿用上一次运行的参数
" :Arguments {args}  设置下一次运行所用参数
"
" :Break     在当前行加断点
" :Clear     删除当前行的一个断点
"
" :Step      = gdb "step"
" :Over      = gdb "next"
" :Finish    = gdb "finish"
" :Continue  = gdb "continue"
" :Stop      中断程序
"
" let g:vimspector_enable_mappings = 'HUMAN'
" let g:vimspector_enable_mappings = 'VISUAL_STUDIO'

" debug, termdebug
" " nnoremap <F6> :Continue<CR>
" nnoremap <leader>mc :Continue<CR>
" " nnoremap <F7> :Over<CR>
" nnoremap <leader>mo :Over<CR>
" " nnoremap <F8> :Step<CR>
" nnoremap <leader>s :Step<CR>
" " nnoremap <F11> :Finish<CR>
" nnoremap <leader>f :Finish<CR>

" debug, vimspector
nmap <leader>dc <Plug>VimspectorContinue
nmap <F6> <Plug>VimspectorContinue

nmap <leader>ds <Plug>VimspectorStepOver
nmap <F7> <Plug>VimspectorStepOver
" nmap <A-n> <Plug>VimspectorStepOver

nmap <leader>di <Plug>VimspectorStepInto
nmap <F8> <Plug>VimspectorStepInto

nmap <leader>do <Plug>VimspectorStepOut
" nmap S<F8> <Plug>VimspectorStepOut
" nmap <A-o> <Plug>VimspectorStepOut

nmap <leader>db <Plug>VimspectorToggleBreakpoint
nmap <F9> <Plug>VimspectorToggleBreakpoint
" nmap <A-b> <Plug>VimspectorToggleBreakpoint

nmap <leader>dp <Plug>VimspectorStop
nmap <F11>  <Plug>VimspectorStop
nmap <leader>dr <Plug>VimspectorRestart
nmap <leader>drt :<C-u>VimspectorReset<CR>
" nmap S<F11> <Plug>VimspectorRestart

" nmap <leader>dn <Plug>VimspectorGoToCurrentLine
" nmap <leader>dp <Plug>VimspectorPause

" nmap <leader>df <Plug>VimspectorAddFunctionBreakpoint
" nmap <leader>dc <Plug>VimspectorToggleConditionalBreakpoint
nmap <leader>dlc <Plug>VimspectorShowOutput Console<CR>
nmap <leader>dld <Plug>VimspectorShowOutput stderr<CR>
nmap <leader>dlo <Plug>VimspectorShowOutput Vimspector-out<CR>
nmap <leader>dle <Plug>VimspectorShowOutput Vimspector-err<CR>
nmap <leader>dls <Plug>VimspectorShowOutput server<CR>
nmap <leader>dlt <Plug>VimspectorShowOutput Telemetry<CR>
nmap <leader>de :<C-u>VimspectorEval<space>
nmap <leader>dw :<C-u>VimspectorWatch<space>
" nmap <A-w> :<C-u>VimspectorWatch<space>
