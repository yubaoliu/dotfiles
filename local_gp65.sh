

export PATH=$PATH:$HOME/data/software/install/bin
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$HOME/data/software/install/lib

#Add TUM Benchmark
export PATH=$PATH:$HOME/data/software/rgbd_benchmark_tools/scripts

export Pangolin_DIR=/home/yubao/data/software/Pangolin/build/src

export Sophus_DIR=/home/yubao/data/software/install/Sophus/cmake
export Sophus_ROOT=/home/yubao/data/software/install/Sophus

export G2O_DIR=/home/yubao/data/software/G2O/lib/cmake/g2o
export G2O_ROOT=/home/yubao/data/software/G2O

export GTest_DIR=/home/yubao/data/software/gooltest/lib/cmake/GTest
export GTest_ROOT=/home/yubao/data/software/gooltest

export glfw3_DIR=/home/yubao/data/software/glfw/lib/cmake/glfw3
export glad_DIR=/home/yubao/data/software/glad/lib/cmake/glad

export Eigen3_DIR=/home/yubao/data/software/eigen/share/eigen3/cmake


if [ $commands[qshell] ]; then
      source <(qshell completion zsh)
fi

export NVM_DIR="/home/yubao/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

alias ssh-powerpc='ssh yubao@133.15.23.109'
