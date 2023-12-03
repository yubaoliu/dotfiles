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
