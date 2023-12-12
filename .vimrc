silent call plug#begin('~/.vim/plugged')
" 对齐, The tabular plugin come before vim-markdown.
Plug 'godlygeek/tabular'
" Plug 'Valloric/YouCompleteMe'   " include: clang_complete, AutoComplPop, Supertab, neocomplcache
" Plug 'Shougo/neocomplcache' "obsolete if enabled YouCompleteMe
" Plug 'justmao945/vim-clang' " similar to clang_complete,  apt install clang  clang-format, obsolete, if
" enabled YouCompleteMe
" Plug 'Shougo/neocomplete'
" 根据内容自动获取文件类型
" Plug 'Shougo/context_filetype.vim'
"自动注释, caw.vim比nerdcommenter更加好
Plug 'tyru/caw.vim'

" Plug 'preservim/nerdcommenter'  " use caw.vim instead
" https://github.com/scrooloose/nerdtree
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
" 显示nredtree中文件和目录的Git状态标志
" Plug 'Xuyuanp/nerdtree-git-plugin'    " doesn't work (2019/4/14)
" 支持nredtree中文件和目录的图标
" 支持高亮显示nredtree中的图标
" Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" Plug 'ryanoasis/vim-devicons'
" git操作
Plug 'tpope/vim-fugitive'
Plug 'preservim/tagbar' 
Plug 'lvht/tagbar-markdown'
Plug 'Scuilion/markdown-drawer'
" https://vim.hizdm.cn/code-display/vim-autoformat.html
" https://github.com/vim-autoformat/vim-autoformat
Plug 'vim-autoformat/vim-autoformat'
"https://github.com/preservim/vim-markdown
Plug 'preservim/vim-markdown'
" use with markdown-preview.vim
Plug 'iamcco/mathjax-support-for-mkdp'
" Preview Markdown
Plug 'iamcco/markdown-preview.vim'
" Plug 'previm/previm'

"switching between companion source files (e.g. .h and .cpp)
Plug 'derekwyatt/vim-fswitch'
" visually displaying indent levels
" 缩进提示线插件
" :help indent-guides
" Plug 'nathanaelkane/vim-indent-guides'
Plug 'Yggdroot/indentLine' " it is better than indent-guides
" ctags, There are some similar Vim plugins out there (vim-tags, vim-autotag, vim-automatic-ctags)
" help ctags
Plug 'ludovicchabant/vim-gutentags'
Plug 'vim-scripts/DoxygenToolkit.vim'
"Plug 'liuchengxu/vim-which-key'
" Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }]}
" 状态栏美化插件,  status/tabline configure
Plug 'vim-airline/vim-airline' "状态标签
Plug 'vim-airline/vim-airline-themes'
" TabooRename -> rename tab
" TabooOpen <tabname>
" taboo is together used with airline
Plug 'gcmt/taboo.vim'
" Search, it is better than ctrlp
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'vhdirk/vim-cmake'
Plug 'puremourning/vimspector'
" 代码模板, 加快写代码的速度
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
" Plug 'taketwo/vim-ros'
" generator with support for powerline symbols and vim/airline/lightline
" statusline integration
" Plug 'edkolev/tmuxline.vim'
" 窗口切换，不清楚有多大用处
" Plug 'regedarek/ZoomWin'
" On-demand lazy load
" Plug 'zxqfl/tabnine-vim'    " very heavy, much memory need
" 不太会用，先去掉
"Plug 'mbbill/undotree'
" 更改成对的符号
" Plug 'tpope/vim-surround'
"  shows a git diff in the sign column
" Plug 'airblade/vim-gitgutter'
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
source ~/dotfiles/config/markdown.vim
source ~/dotfiles/config/indent-line.vim
"source ~/dotfiles/config/which-key.vim
source ~/dotfiles/config/cmake.vim
source ~/dotfiles/config/ide.vim
source ~/dotfiles/config/tagbar.vim

"source ~/dotfiles/config/undotree.vim
" source ~/dotfiles/config/tmuxline.vim
" source ~/dotfiles/config/vim-indent-guides.vim " use indent-line instead
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
