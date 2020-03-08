
export LD_LIBRARY_PATH="/usr/locla/lib:$LD_LIBRARY_PATH"


#solorized
#source ~/dotfiles/solarized.sh

#ROS
source "$HOME/dotfiles/ros.sh"

#Octomap
export OCTOMAP_DIR="$HOME/data/software/octomap/share/octomap"

#glfw
export glfw3_DIR="$HOME/data/software/glfw/lib/cmake/glfw3"

# TMUX
export PATH="$HOME/data/software/tmux/bin:$PATH"

# freenect2
export PATH="$HOME/data/software/freenect2/bin:$PATH"
export freenect2_DIR="$HOME/data/software/libfreenect2/lib/cmake/freenect2"

# OPENCV
#export OpenCV_DIR="$HOME/data/software/opencv3.3.1/share/OpenCV"

# CUDA
export LD_LIBRARY_PATH="/usr/local/cuda/lib64:${LD_LIBRARY_PATH}"
export PATH="/usr/local/cuda/bin:${PATH}"


#Pangolin
export Pangolin_DIR="$HOME/data/software/Pangolin/lib/cmake/Pangolin"

# g2o
export g2o_DIR="$HOME/data/software/g2o/lib/cmake/g2o"

# Boost
#export BOOST_ROOT="$HOME/data/software/boost"

# DBoW2
export DBoW2_DIR=$HOME/software/DBoW2/lib/cmake/DBoW2

# Eigen
#export  Eigen3_DIR="$HOME/data/software/Eigen/share/eigen3/cmake"

#GTSAM
export GTSAM_DIR="$HOME/software/gtsam/lib/cmake"

# Nodejs
export PATH="$HOME/software/node-v10.16.0-linux-x64/bin:${PATH}"

#GSLAM
#export PATH="$HOME/software/bin:${PATH}"

# LIB
#export LD_LIBRARY_PATH="$HOME/software/lib:${LD_LIBRARY_PATH}"

#PCL
#export PCLConfig_DIR="$HOME/software/install/share/pcl-1.8"

# glags
export gflags_DIR="~/data/software/gflags/lib/cmake/gflags"

# Openpose
export OpenPose_DIR="$HOME/data/software/openpose/lib/OpenPose"

# glog
#export glog_DIR="$HOME/data/software/glog"

#gtest
#export GTest_DIR="$HOME/data/software/gtest/lib/cmake/GTest"


# Caffe
#export CAFFE_ROOT="~/software/caffe"
#export PYCAFFE_ROOT="$CAFFE_ROOT/python"
#export PYTHONPATH="$PYCAFFE_ROOT:$PYTHONPATH"
#export LD_LIBRARY_PATH="$CAFFE_ROOT/lib:$LD_LIBRARY_PATH"

# Realsense
export realsense2_DIR="$HOME/data/software/librealsense/lib/cmake/realsense2"

# dlib
export DLIB_ROOT="~/data/Project/3rdPartyLibs/dlib/"

# kobuki
alias sourcekobuki='source ~/dotfiles/scripts/kobuki.sh'
alias sshkobuki='source ~/dotfiles/scripts/ssh-kobuki.sh'

# nvidia-jetson
alias sourcexavier='source ~/dotfiles/scripts/xavier.sh'
alias sshxavier='source ~/dotfiles/scripts/ssh-xavier.sh'

#jekyll
# Install Ruby Gems to ~/gems
export GEM_HOME="$HOME/gems"
export PATH="$HOME/gems/bin:$PATH"

# Rtamb SLAM
export RTABMap_DIR="$HOME/data/software/rtabmap/lib/rtabmap-0.19"

# common used
alias cddocker='cd ~/data/Project/docker'
alias cdproject='cd ~/data/Project'
alias cdSpaceAI='cd ~/data/SpacialAI/catkin_ws/src'
alias cdRepo='cd ~/data/Project/RepoCollection/'
alias qshell="~/data/software/qshell-linux-x64-v2.4.0"

alias run-docer-rtabmap="docker run -it --rm \
         --env ROS_MASTER_URI=http://172.17.0.1:11311 --env ROS_IP=172.17.0.1 \
          -v ~/.ros:/root  \
           ros:rtabmap \
            roslaunch rtabmap_ros rtabmap.launch rtabmapviz:=false database_path:=/root/rtabmap.db rtabmap_args:=\"--delete_db_on_start\""
