#!/bin/sh

cd ~/.vim/plugged

# Get
echo "Install vim-markdown"
wget -c https://github.com/preservim/vim-markdown/archive/master.tar.g://github.com/preservim/vim-markdown/archive/master.tar.gz


# Install
tar --strip=1 -zxf vim-markdown-master.tar.gz
