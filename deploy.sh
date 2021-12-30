ROOT=`pwd`
cd $HOME

echo "clean old files"
mv  ~/.vimrc  ~/.vimrc.bak
mv  ~/.tmux.conf ~/.tmux.conf.bak
mv  ~/.Xresources ~/.Xresources.bak
mv  ~/.zshrc ~/.zshrc.bak

ln -s $ROOT/.vimrc
# ln -s $ROOT/.vim
ln -s $ROOT/.tmux.conf
ln -s $ROOT/.Xresources
ln -s $ROOT/.zshrc


# enable zsh for all terminals
echo "zsh" > ~/.bashrc

# put your mannulay configurations here
touch ~/local_config.sh
