ROOT=`pwd`
cd $HOME

echo "clean old files"
rm  -f  ~/.vimrc ~/.tmux.conf ~/.Xresources ~/.zshrc

ln -s $ROOT/.vimrc
ln -s $ROOT/.tmux.conf
ln -s $ROOT/.Xresources
ln -s $ROOT/.zshrc
curl -fLo $HOME/.vim/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# enable zsh for all terminals
echo "zsh" > ~/.bashrc

# put your mannulay configurations here
touch ~/local_config.sh
