cd ~

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

