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
global \
exuberant-ctags \
python-pygments \
ctags \
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

sh -c "$(curl -fsSL https://ghproxy.com/https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
# use the downloaded version if failed downloading
# ./tools/ohmyzsh-install.sh

# rben
git clone https://ghproxy.com/https://github.com/sstephenson/rbenv.git ~/.rbenv

# vim plug
curl -fLo $HOME/.vim/autoload/plug.vim --create-dirs  https://ghproxy.com/https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
# use the downloaded version if failed downloading
# mkdir $HOME/.vim/autoload
# cp tools/plug.vim $HOME/.vim/autoload

# mkdir
echo -e "function mkcd(){mkdir -p \$1 && cd \$1}" >> ~/.zshrc && exec $SHELL
