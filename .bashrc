
#ubuntu
alias ll='ls -l'

# Emacs
alias e='emacs -nw'

#solorized
#source ~/dotfiles/solarized.sh

#ROS
source $HOME/.ros_setup.sh

# TMUX
export PATH="$HOME/software/tmux/bin:$PATH"

# freenect2
export PATH="$HOME/software/freenect2/bin:$PATH"

# OPENCV
#export OpenCV_DIR="$HOME/software/opencv3.3.1/share/OpenCV"

# CUDA
export LD_LIBRARY_PATH="/usr/local/cuda/lib64:${LD_LIBRARY_PATH}"
export PATH="/usr/local/cuda/bin:${PATH}"


#Pangolin
export Pangolin_DIR=$HOME/software/Pangolin/lib/cmake/Pangolin

# g2o
export g2o_DIR="$HOME/software/g2o/lib/cmake/g2o"

# DBoW2
export DBoW2_DIR=$HOME/software/DBoW2/lib/cmake/DBoW2

# Eigen
export  Eigen3_DIR="$HOME/software/Eigen/share/eigen3/cmake"

#GTSAM
export GTSAM_DIR="$HOME/software/gtsam/lib/cmake"

# Nodejs
export PATH="$HOME/software/node-v10.16.0-linux-x64/bin:${PATH}"

#GSLAM
export PATH="$HOME/software/bin:${PATH}"

# LIB
export LD_LIBRARY_PATH="$HOME/software/lib:${LD_LIBRARY_PATH}"

#PCL
#export PCLConfig_DIR="$HOME/software/install/share/pcl-1.8"

#glags
export gflags_DIR="~/software/install/gflags/lib/cmake/gflags"

#glog
export glog_DIR="~/software/install/glog"

# Caffe
export CAFFE_ROOT="~/software/caffe"
export PYCAFFE_ROOT="$CAFFE_ROOT/python"
export PYTHONPATH="$PYCAFFE_ROOT:$PYTHONPATH"
export LD_LIBRARY_PATH="$CAFFE_ROOT/lib:$LD_LIBRARY_PATH"

# Commond
alias cdSpaceAI='cd ~/data/SpacialAI/catkin_ws/src'
alias cdRepo='cd ~/data/Project/RepoCollection/'




