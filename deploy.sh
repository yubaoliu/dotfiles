ROOT=`pwd`
cd $HOME

# Deploy VIM
mv  ~/.vimrc  ~/.vimrc.bak
ln -s $ROOT/.vimrc

# Deploy TMUX
mv  ~/.tmux.conf ~/.tmux.conf.bak
ln -s $ROOT/.tmux.conf
ln -s $ROOT/alias.sh
ln -s tmux ~/.tmux
cp oh-my-tmux/.tmux.conf.local ~/.tmux.conf.local


## get plugin manager
# git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
## install plugin:
~/.tmux/plugins/tpm/bin/install_plugins





echo "clean old files"
mv  ~/.Xresources ~/.Xresources.bak
mv  ~/.zshrc ~/.zshrc.bak

# ln -s $ROOT/.vim
ln -s $ROOT/.Xresources
ln -s $ROOT/.zshrc
ln -s $ROOT/.ctags


# enable zsh for all terminals
# echo "zsh" > ~/.bashrc

# put your mannulay configurations here
echo "source alias.sh" > ~/local_config.sh
touch ~/local_config.sh
