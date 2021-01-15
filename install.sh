sudo apt update

echo "Install dependencies"
sudo apt install -y trash-cli \
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
sudo apt-add-repository ppa:brightbox/ruby-ng && sudo apt-get -y update
sudo apt install -y ruby2.6 ruby2.6-dev

# VIm plugin
sudo apt-get install -y astyle clang-format python-autopep8  remark 
sudo apt install -y npm && npm install -g remark-cli
pip install autopep8
pip install yapf 

