call plug#begin('~/.vim/plugged')
Plug 'Valloric/YouCompleteMe'   " include: clang_complete, AutoComplPop, Supertab, neocomplcache
" Plug 'Shougo/neocomplcache' "obsolete if enabled YouCompleteMe
" Plug 'justmao945/vim-clang' " similar to clang_complete,  apt install clang  clang-format, obsolete, if
" enabled YouCompleteMe
" Plug 'Shougo/neocomplete'
" 根据内容自动获取文件类型
" Plug 'Shougo/context_filetype.vim'
 "自动注释, caw.vim比nerdcommenter更加好
Plug 'tyru/caw.vim'
" Plug 'preservim/nerdcommenter'  " use caw.vim instead
Plug 'scrooloose/nerdtree'
" 显示nredtree中文件和目录的Git状态标志
" Plug 'Xuyuanp/nerdtree-git-plugin'    " doesn't work (2019/4/14)
" 支持nredtree中文件和目录的图标
" Plug 'ryanoasis/vim-devicons'
" 支持高亮显示nredtree中的图标
" Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'mbbill/undotree'
" git操作
Plug 'tpope/vim-fugitive'
Plug 'liuchengxu/vim-which-key' 
Plug 'vim-airline/vim-airline' "状态标签
Plug 'vim-airline/vim-airline-themes'
Plug 'edkolev/tmuxline.vim'
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'iamcco/markdown-preview.vim'
Plug 'previm/previm'
Plug 'regedarek/ZoomWin'
" Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }]}
Plug 'chiel92/vim-autoformat'
" visually displaying indent levels 
Plug 'nathanaelkane/vim-indent-guides'
"switching between companion source files (e.g. .h and .cpp)
Plug 'derekwyatt/vim-fswitch'    
Plug 'vim-scripts/DoxygenToolkit.vim'
" On-demand lazy load
" Plug 'zxqfl/tabnine-vim'    " very heavy, much memory need
Plug 'iamcco/mathjax-support-for-mkdp'
Plug 'ludovicchabant/vim-gutentags' 
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
call plug#end()

"" ============= GLOBAL ==============""
let mapleader = "\<Space>"  

source ~/dotfiles/config/appearence.vim
source ~/dotfiles/config/ctags.vim
source ~/dotfiles/config/ycm.vim
source ~/dotfiles/config/default.vim
source ~/dotfiles/config/nerdtree.vim
source ~/dotfiles/config/caw.vim
source ~/dotfiles/config/airline.vim
source ~/dotfiles/config/autoformat.vim
source ~/dotfiles/config/doxygen.vim
source ~/dotfiles/config/keybinding.vim
" source ~/dotfiles/config/nerdcommenter.vim :use caw.vim instead
" source ~/dotfiles/config/clang.vim
" source ~/dotfiles/config/neocomplete.vim

""===============REFERENCE=============""
" Help wesites
" cheat sheet: https://vim.rtorr.com/
" plugin: https://vimawesome.com/
" https://github.com/yangyangwithgnu/use_vim_as_ide
" https://www.yiibai.com/vim/vim_markers.html
" use '\|' or <bar> to map chained commands
" vim插件——YouCompleteMe: https://blog.csdn.net/liao20081228/article/details/80347889

""============== SYMBALS ===========""
" ` - 后退引号 
