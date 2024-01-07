sudo apt update

echo "Install dependencies"
sudo apt install -y software-properties-common git curl \
    python3-dev \
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
    xclip \
    fzf


echo "==================Fonts====================="
sudo apt-get install fonts-powerline fonts-3270 fonts-material-design-icons-iconfont

mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts && curl -fLO https://github.com/ryanoasis/nerd-fonts/raw/HEAD/patched-fonts/DroidSansMono/DroidSansMNerdFont-Regular.otf

echo "==================Oh my zsh====================="
sh -c "$(curl -fsSL https://ghproxy.com/https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

sudo apt install -y autojump
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions 
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/le1me55i/zsh-extract.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-extract

echo "================VIM======================"
# vim plug
curl -fLo $HOME/.vim/autoload/plug.vim --create-dirs  https://ghproxy.com/https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
# VIm plugin
sudo apt install -y npm && npm install -g remark-cli

sudo apt install -y python3-pip
pip install autopep8
pip install yapf

# Langue support
sudo apt-get install -y astyle clang  clang-format python3-autopep8

# YCM
sudo apt install  -y build-essential cmake vim-nox python3-dev

# markdown format
npm install -g remark-cli


echo "================Ruby======================"
echo "Install ruby"
sudo apt-add-repository -y ppa:brightbox/ruby-ng
sudo apt-get -y update
sudo apt install -y ruby ruby-dev

# rben
rm  -rf ~/.rbenv
git clone https://ghproxy.com/https://github.com/sstephenson/rbenv.git ~/.rbenv


#  Un-share the history among terminals
#unsetopt share_history
#setopt no_share_history

# mkdir
echo -e "function mkcd(){mkdir -p \$1 && cd \$1}" >> ~/.zshrc && exec $SHELL

