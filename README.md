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

##  vim plugin

```sh
# plug
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

## vim commands


  -   set paste

## **References**

- https://github.com/junegunn/vim-plug
- 

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

