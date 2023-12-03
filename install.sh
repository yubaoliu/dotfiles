sudo apt update

echo "Install dependencies"
sudo apt install -y software-properties-common git curl \
puthon3-dev \
python3-pygments \
zsh \
trash-cli \
libevent-dev \
libncurses5-dev \
libncursesw5-dev \
bison \
byacc \
autotools-dev \
automake \
global \
exuberant-ctags \
universal-ctags \
xsel \
vim-doc \
vim-gtk
# vim-autopep8 
# vim-youcompleteme \
# vim-airline \
# vim-airline-themes \
# vim-fugitive  \
# vim-pathogen \
# vim-tabular \
# vim-snippets

echo "Install ruby"
sudo apt-add-repository -y ppa:brightbox/ruby-ng 
sudo apt-get -y update
sudo apt install -y ruby ruby-dev

# Langue support
sudo apt-get install -y astyle clang  clang-format python3-autopep8  remark 

# markdown format
npm install -g remark-cli

# VIm plugin
sudo apt install -y npm && npm install -g remark-cli

sudo apt install -y python3-pip
pip install autopep8
pip install yapf 


#  Un-share the history among terminals
#unsetopt share_history
#setopt no_share_history

echo "Install ohmyzsh"
echo "https://ohmyz.sh/#install"

sh -c "$(curl -fsSL https://ghproxy.com/https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
# use the downloaded version if failed downloading
# ./library/ohmyzsh-install.sh

# rben
rm  -rf ~/.rbenv
git clone https://ghproxy.com/https://github.com/sstephenson/rbenv.git ~/.rbenv

# vim plug
curl -fLo $HOME/.vim/autoload/plug.vim --create-dirs  https://ghproxy.com/https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
# use the downloaded version if failed downloading
# mkdir $HOME/.vim/autoload
# cp tools/plug.vim $HOME/.vim/autoload

# mkdir
echo -e "function mkcd(){mkdir -p \$1 && cd \$1}" >> ~/.zshrc && exec $SHELL

# tmux
## get plugin manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
## install plugin:
~/.tmux/plugins/tpm/bin/install_plugins

