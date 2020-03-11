# Introduction

This is my awesome configure file

# Config

```sh
git clone git@github.com:yubaoliu/dotfiles.git ~/dotfiles

cd ~
ln -s dotfiles/.zshrc
ln -s dotfiles/.vimrc
ln -s dotfiles/.vim

export EDITOR='vim'
```



## on-my-zsh

## Installation

```sh
sudo apt install zsh

sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

## Commands

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

- astyle

```sh
sudo apt-get install astyle
```

### vim-autoformat

- [vim-autoformat](https://github.com/Chiel92/vim-autoformat)

- <F3>: auto format

- clang-format

  既然有了clang-format，为什么还需要vim-autoformat呢？其实这里vim-autoformat是相当于将原本独立的clang-format集成到了vim中，没有它，也就只能单独运行clang-format来格式化代码

  在ubuntu下安装clang-format也非常的方便，只需运

```sh
sudo apt-get install clang-format
```

- autopep8

  ```sh
  pip install autopep8
  yum -y install clang
  
  ```

- autopep8 (**Python**)

  ```sh
  sudo apt-get install python-autopep8 
  ```

- yapf (**Python**)

  ​	

  ```sh
  sudo pip install yapf or pip install --user yapf
  let g:formatter_yapf_style = 'pep8'
  pep8 is the default value, or you can choose: google, facebook, chromium.
  ```

- `black` for **Python**

  ```sh
  sudo pip install black or pip install --user
  ```

- `remark` for **Markdown**

- `fixjson` for JSON

  ```sh
  npm install -g remark-cli
  ```

  

Emacs
=====

-   mark: C-c C-SPC

    Mehtod 1:

    ``` {.example}
    sudo add-apt-repository ppa:kelleyk/emacs
    sudo apt install emacs26
    ```

    Method 2:

        sudo add-apt-repository ppa:ubuntu-elisp/ppa
        sudo apt-get update
        sudo apt-get install emacs-snapshot



Reference
=========

-   spacemacs

