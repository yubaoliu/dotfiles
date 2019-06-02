
cd ~/dotfiles

# bashrc
ln -s -f ~/dotfiles/.bashrc ~/.bashrc 
ln -s -f ~/dotfiles/.dir_colors ~/.dir_colors


# vim
ln -s -f  ~/dotfiles/.vimrc ~/.vimrc
ln -s -f  ~/dotfiles/.vim ~/.vim

# TMUX
ln -s -f ~/dotfiles/.tmux.conf ~/.tmux.conf 
ln -s -f ~/dotfiles/.tmux ~/.tmux 

echo "GIT"
ln -s -f ~/dotfiles/.gitconfig ~/.gitconfig

echo "ROS"
ln -s -f ~/dotfiles/.ros_setup ~/.ros_setup
ln -s -f ~/dotfiles/.ros ~/.ros

echo "rviz"
ln -s -f  ~/dotfiles/.rviz ~/.rviz



