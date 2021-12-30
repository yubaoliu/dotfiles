# Introduction

This is my awesome configure file for Ubuntu.

# Funcions or modules will be installed and configured
- on-my-zsh
```sh
sudo apt install zsh

sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

rm ~/.zshrc
```
- vim
- tmux

# VIM shortcuts

<Leader> +

## Function keys
- F3: autoformat
- F5: file folder
- F8: undo tree
- F7: markdown preview
- F9: stop markdown preview

## Basic
- ww: write changes
- w!: write without modification
- wq: write and quit
- q!: quit without write
- qall: quit all the windows

## Window related
-  C:  close the window
-  wd:  close the window
-  wo:  close all other windows
-  |:   vertical window
-  -:   horizental window

## Mouse movement
- 0: move to the head of a line
-
-
# Installation
- Install the requirements

```sh
./install.sh
```
- Deploy the configurations, this will delete the old configure in ~

```sh
./deploy.sh
```

- Put your manually config to ~/local_config.sh

# Vim Tutorials

VIM 常用的有四个模式，：

常模式 (Normal-mode)
插入模式 (Insert-mode)
命令模式 (Command-mode)
可视模式 (Visual-mode)


# Reference
- [VimForCpp](https://gitee.com/HGtz2222/VimForCpp#%E6%94%AF%E6%8C%81%E7%8E%AF%E5%A2%83)
- [SpaceVim](https://spacevim.org/use-vim-as-a-c-cpp-ide/)

------------------------- OLD -----------------------------------


# Config

```sh
git clone git@github.com:yubaoliu/dotfiles.git ~/dotfiles

cd ~
ln -s dotfiles/.zshrc
ln -s dotfiles/.vimrc
```

# Commands

- Command history

  - C-r

  - Un-share the history among terminals

    ```sh
    unsetopt share_history
    setopt no_share_history
    ```

- mkcd

  ```sh
  echo -e "function mkcd(){mkdir -p \$1 && cd \$1}" >> ~/.zshrc && exec $SHELL
  ```
# Software

## Useful tools

```sh
sudo apt intall htop
```
## TMUX

```sh
sudo apt-get install -y libevent-dev
libncurses5-dev libncursesw5-dev \
bison \
byacc \
autotools-dev \
automake


git clone https://github.com/tmux/tmux.git
cd tmux
sh autogen.sh
./configure && make
```

- prefix: C-SPC

## tmuxinator

- Dependence

```sh
ruby --version
ruby 2.6.5p114 (2019-10-01 revision 67812) [x86_64-linux-gnu]

tmux -V
tmux next-3.2
```

- Install

```sh
gem install --user-install tmuxinator

# completion
wget https://raw.githubusercontent.com/tmuxinator/tmuxinator/master/completion/tmuxinator.zsh -O /usr/local/share/zsh/site-functions/_tmuxinator

```
<https://github.com/tmuxinator/tmuxinator>

- How to use

```sh
tmuxinator new demo
```

```sh
source 'https://rubygems.org'
group :development do
  gem 'guard-livereload'
  gem 'guard-bundler'
end
```

Then run bundle install again.


- [Setting Up Terminator (Terminal ++)](https://coderwall.com/p/1pivpa/setting-up-terminator-terminal)

## Rupy

You should upgrade ruby by

```sh
➜  ~ ruby --version
ruby 2.3.1p112 (2016-04-26) [x86_64-linux-gnu]
sudo apt autoremove ruby2.3*
```

```sh
sudo apt-add-repository ppa:brightbox/ruby-ng
sudo apt install ruby2.6 ruby2.6-dev

$ sudo gem install bundler
$ gem install bundler --user-install
```



The best solution:

https://stackoverflow.com/questions/37720892/you-dont-have-write-permissions-for-the-var-lib-gems-2-3-0-directory

1. First, update the packages index and install the packages required for the ruby-build tool to build Ruby from source:

    ```sh
    sudo apt-get remove ruby
    sudo apt update
    sudo apt install git curl libssl-dev libreadline-dev zlib1g-dev autoconf bison build-essential libyaml-dev libreadline-dev libncurses5-dev libffi-dev libgdbm-dev
    ```

1. Next, run the following curl command to install both rbenv and ruby-build:

    ```sh
    curl -sL https://github.com/rbenv/rbenv-installer/raw/master/bin/rbenv-installer | bash -
    ```

1. Add $HOME/.rbenv/bin to the system PATH

    ```sh
    echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.zshrc
    echo 'eval "$(rbenv init -)"' >> ~/.zshrc
    source ~/.zshrc
    ```
1. Install the latest stable version of Ruby and set it as a default version with:

   ```sh
   rbenv install 2.6.0
   rbenv global 2.6.0
   ```

1. Verify that Ruby was properly installed by printing out the version number:
    ```sh
    ruby -v
    ```

**Install rubygems:**

```
sudo apt-get install rubygems
```

Not using root:

```sh
chown -R rubyusername:rubyusername /var/lib/gems 
```



## rmtrash

```sh
sudo apt install trash-cli

# optional
sudo cp rmtrash/rmtrash /usr/local/bin
sudo cp rmtrash/rmdirtrash /usr/local/bin
```

- https://github.com/PhrozenByte/rmtrash

  

## ROS

http://wiki.ros.org/kinetic/Installation/Ubuntu

```sh
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
sudo apt-get update
sudo apt-get install ros-kinetic-desktop-full

sudo rosdep init
rosdep update

sudo apt install python-rosinstall python-rosinstall-generator python-wstool build-essential

```

## Jekyll

- Dependences
  - ruby

```sh
gem install bundler jekyll

sudo apt-get install ruby-full build-essential zlib1g-dev
gem install jekyll bundler

bundle install
bundle exec jekyll serve

gem install jekyll-paginate

# run
jekyll serve --incremental
```



Issue

```sh
/usr/lib/ruby/vendor_ruby/rubygems/defaults/operating_system.rb:10: warning: constant Gem::ConfigMap is deprecated
```

**Themes**

- http://themes.jekyllrc.org/
- 

## Atom

- markdown-writer
- markdown-img-paste
  - [sm.ms](https://sm.ms/login)
  - qiniu
  - assets folder

# VIM

- Mode
```sh
标记 模式
<space>　常规模式，可视化模式，运算符模式
n　　　　　常规模式
v　　　　　可视化模式
o　　　　　运算符模式
!　　　　　插入模式，命令行模式
i　　　　　插入模式
c　　　　　命令模式

nore
表示非递归，见下面的介绍

n
表示在普通模式下生效

v
表示在可视模式下生效

i
表示在插入模式下生效

c
表示在命令行模式下生效

map
表示递归的映射

unmap
表示删除某个映射

mapclear
表示清楚映射

! 插入和命令行 
i 插入 
l 插入、命令行和 Lang-Arg 模式的 ":lmap" 映射 

  コマンド                    モード
  :map   :noremap  :unmap     ノーマル、ビジュアル、選択、オペレータ待機
  :nmap  :nnoremap :nunmap    ノーマル
  :vmap  :vnoremap :vunmap    ビジュアル、選択
  :smap  :snoremap :sunmap    選択
  :xmap  :xnoremap :xunmap    ビジュアル
  :omap  :onoremap :ounmap    オペレータ待機
  :map!  :noremap! :unmap!    挿入、コマンドライン
  :imap  :inoremap :iunmap    挿入
  :lmap  :lnoremap :lunmap    挿入、コマンドライン、Lang-Arg
  :cmap  :cnoremap :cunmap    コマンドライン
  :tmap  :tnoremap :tunmap    端末ジョブ
```

- Help docs
  - [Vim documentation: options](http://vimdoc.sourceforge.net/htmldoc/options.html)
- Refresh config

```sh
重启 Vim 或执行 :source ~/.vimrc 让 Vim 加载插件
```

## vim commands
  -   set paste
## Plugin
###  Install plugin
```sh
\# plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
Reload .vimrc and `:PlugInstall` to install plugins.

 **vim plugin commands**

| Command                             | Description                                                  |
| ----------------------------------- | ------------------------------------------------------------ |
| `PlugInstall [name ...] [#threads]` | Install plugins                                              |
| `PlugUpdate [name ...] [#threads]`  | Install or update plugins                                    |
| `PlugClean[!]`                      | Remove unlisted plugins (bang version will clean without prompt) |
| `PlugUpgrade`                       | Upgrade vim-plug itself                                      |
| `PlugStatus`                        | Check the status of plugins                                  |
| `PlugDiff`                          | Examine changes from the previous update and the pending changes |
| `PlugSnapshot[!] [output path]`     | Generate script for restoring the current snapshot of the plugins |

### NERD Commenter

- [Official GitHub](https://github.com/preservim/nerdcommenter)
- [NERD Commenterでコメントアウト、アンコメントを楽にする](https://qiita.com/pepo/items/09bacf98a36f6a7285ac)

- help

```sh
:help NERDCommenter命令查看帮助
```

- map
```sh
:map
```

   使用:map!命令，则只列出插入和命令行模式的映射。而:imap，:vmap，:omap，:nmap命令则只是列出相应模式下的映射。
- umap
```sh
:unmap <F10>

取消所有映射
:mapclear
```

- Leader key: ``\``
- NERDCommenterToggle

```sh
[count]<leader>c<space> |NERDCommenterToggle|
```

- `[count]cc` **|NERDCommenterComment|**

  Comment out the current line or text selected in visual mode.

- `[count]cn` **|NERDCommenterNested|**

  Same as cc but forces nesting.

- `[count]c` **|NERDCommenterToggle|**

  Toggles the comment state of the selected line(s). If the topmost selected line is commented, all selected lines are uncommented and vice versa.

- `[count]cm` **|NERDCommenterMinimal|**

  Comments the given lines using only one set of multipart delimiters.

- `[count]ci` **|NERDCommenterInvert|**

  Toggles the comment state of the selected line(s) individually.

- `[count]cs` **|NERDCommenterSexy|**

  Comments out the selected lines with a pretty block formatted layout.

- `[count]cy` **|NERDCommenterYank|**

  Same as cc except that the commented line(s) are yanked first.

- `c$` **|NERDCommenterToEOL|**

  Comments the current line from the cursor to the end of line.

- `cA` **|NERDCommenterAppend|**

  Adds comment delimiters to the end of line and goes into insert mode between them.

- **|NERDCommenterInsert|**

  Adds comment delimiters at the current cursor position and inserts between. Disabled by default.

- `ca` **|NERDCommenterAltDelims|**

  Switches to the alternative set of delimiters.

- `[count]cl` **|NERDCommenterAlignLeft** `[count]cb` **|NERDCommenterAlignBoth**

  Same as **|NERDCommenterComment|** except that the delimiters are aligned down the left side (`cl`) or both sides (`cb`).

- `[count]cu` **|NERDCommenterUncomment|**

  Uncomments the selected line(s).


### [vim-which-key](https://github.com/liuchengxu/vim-which-key)

### vim-autoformat

- [vim-autoformat](https://github.com/Chiel92/vim-autoformat)

- <F3>: auto format

- clang-format  for **C**, **C++**, **Objective-C**, **Protobuf** (

  既然有了clang-format，为什么还需要vim-autoformat呢？其实这里vim-autoformat是相当于将原本独立的clang-format集成到了vim中，没有它，也就只能单独运行clang-format来格式化代码

  在ubuntu下安装clang-format也非常的方便，只需运

    ```sh
    sudo apt-get install clang-format
    ```

- astyle for **C#**, **C++**, **C** and **Java**.

    ```sh
    sudo apt-get install astyle
    ```

- autopep8 for **Python** (supports formatting ranges)

  ```sh
  pip install autopep8
  yum -y install clang
  ```
- autopep8 (**Python**)

  ```sh
  sudo apt-get install python-autopep8 
  ```
- yapf (**Python**)

  ```sh
    sudo pip install yapf or pip install --user yapf
    let g:formatter_yapf_style = 'pep8'
  ```
  pep8 is the default value, or you can choose: google, facebook, chromium.
  pep8 is the default value, or you can choose: google, facebook, chromium.

- `black` for **Python**

  ```sh
  sudo pip install black
   or 
  pip install --user
  ```
- `remark` for **Markdown**
    ```sh
    sudo apt install remark
    ```
- `fixjson` for JSON

  ```sh
  npm install -g remark-cli
  ```
## caw.vim
  - https://github.com/tyru/caw.vim
- バックスラッシュ+c (\c) で行頭(インデントあり)にコメントのトグル
- バックスラッシュ+カンマ (\,) で行頭(インデント関係なく行頭)にコメントのトグル
を設定するために.vimrcは以下のようにした

Refer from; https://yoheikoga.github.io/2017/04/12/caw-vim-comment-out-toggle-shortcut/ 
  ```sh
.vimrc
" 行の最初の文字の前にコメント文字をトグル
nmap <Leader>c <Plug>(caw:hatpos:toggle)
vmap <Leader>c <Plug>(caw:hatpos:toggle)
" 行頭にコメントをトグル
nmap <Leader>, <Plug>(caw:zeropos:toggle)
vmap <Leader>, <Plug>(caw:zeropos:toggle)
  ```

# Emacs
-   mark: C-c C-SPC
    Mehtod 1:
    ```sh
    sudo add-apt-repository ppa:kelleyk/emacs
    sudo apt install emacs26
    ```
    Method 2:
    ```sh
        sudo add-apt-repository ppa:ubuntu-elisp/ppa
        sudo apt-get update
        sudo apt-get install emacs-snapshot
    ```
# Reference
-   spacemacs
- [emacs派のためのvimrc](https://qiita.com/jimpei/items/c97e2bc06cabf1ffc07f)


