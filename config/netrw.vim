" File Explorer, netrw
" Plug 'prichrd/netrw.nvim'
" https://github.com/prichrd/netrw.nvim
" https://shapeshed.com/vim-netrw/
" :h netrw-quickhelp
" :Explore - opens netrw in the current window
" :Sexplore - opens netrw in a horizontal split
" :Vexplore - opens netrw in a vertical split

nnoremap <leader>ev <Esc>:Vexplore<CR>
nnoremap <leader>eh <Esc>:Hexplore<CR>

let g:netrw_banner = 1
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25

" augroup ProjectDrawer
"   autocmd!
"   autocmd VimEnter * :Vexplore
" augroup END


