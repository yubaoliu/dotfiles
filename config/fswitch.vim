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
