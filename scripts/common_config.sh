#!/bin/sh

ROOT=~/dotfiles/scripts

source $ROOT/alias.sh

#ROS
# source ~/ros.sh

# source $ROOT/cuda.sh
# source $ROOT/alias.sh
# export XMODIFIERS=”@im=fcitx”

# history
unsetopt share_history
setopt no_share_history

# 重複を記録しない
setopt hist_ignore_dups

# 開始と終了を記録
setopt EXTENDED_HISTORY

# 補完時にヒストリを自動的に展開         
setopt hist_expand

# tmuxinator
#source $ROOT/.tmuxinator/.tmuxinator.zsh

#function mkcd(){mkdir -p $1 && cd $1}

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
-e function mkcd(){mkdir -p $1 && cd $1}

# Docker GUI compatible
echo "Run gui in docker"
xhost +local:root


