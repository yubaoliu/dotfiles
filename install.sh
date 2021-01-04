echo "Install dependencies"
sudo apt intstall -y trash-cli \
libevent-dev \
libncurses5-dev \
libncursesw5-dev \
bison \
byacc \
autotools-dev \
automake \
zsh \
vim-gtk  #vim clipboard

echo "Install ruby"
sudo apt-add-repository ppa:brightbox/ruby-ng
sudo apt install ruby2.6 ruby2.6-dev

# VIm plugin
sudo apt-get install astyle
sudo apt-get install clang-format
pip install autopep8
sudo apt-get install python-autopep8 

sudo pip install yapf 
sudo apt install remark # markdown

sudo apt install npm
npm install -g remark-cli

echo "clean old files"
rm  -f  ~/.vimrc ~/.tmux.conf ~/.Xresources

echo "create new lindks"
ln -s $PWD/.vimrc ~/.vimrc
ln -s $PWD/.tmux.conf  ~/.tmux.conf
ln -s $PWD/.Xresources ~/.Xresources

