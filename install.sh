sudo apt update

echo "Install dependencies"
sudo apt install -y software-properties-common git curl \
trash-cli \
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
sudo apt-add-repository -y ppa:brightbox/ruby-ng 
sudo apt-get -y update
sudo apt install -y ruby ruby-dev

# VIm plugin
sudo apt-get install -y astyle clang-format python-autopep8  remark 
sudo apt install -y npm && npm install -g remark-cli

sudo apt install -y python3-pip
pip install autopep8
pip install yapf 


#  Un-share the history among terminals
unsetopt share_history
setopt no_share_history

echo "Install ohmyzsh"
echo "https://ohmyz.sh/#install"
#sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# rben
git clone git://github.com/sstephenson/rbenv.git ~/.rbenv

# mkdir
echo -e "function mkcd(){mkdir -p \$1 && cd \$1}" >> ~/.zshrc && exec $SHELL
