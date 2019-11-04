#export ROS_HOME=~/.ros
#export ROS_LOG_DIR=/tmp/ros
#export ROS_TEST_RESULTS_DIR=/tmp/ros

source /opt/ros/kinetic/setup.bash --extend
source $HOME/data/catkin_ws/devel/setup.bash --extend
source $HOME/data/catkin_flexbe_ws/devel/setup.bash --extend  # just for FlexBe

export ROS_MASTER_URI=http://localhost:11311
#export ROS_MASTER_URI=http://kobuki:11311
export ROS_HOSTNAME=localhost
export ROS_IP=133.15.23.26

echo "ROS MASTER_URI & ROS_HOSTNAME"
echo $ROS_MASTER_URI
echo $ROS_HOSTNAME
