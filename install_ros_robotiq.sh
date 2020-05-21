# Install Robotiq on Meldoic of ROS
###### Tags: `ShellScripts` `ROS` `UniversalRobots`
#!/usr/bin/env bash

#Base on ubuntu 18.04
#----------------------------------------------------------------------------------------------------------------------------

if [[ `id -u` -eq 0 ]] ; then
    echo "Do not run this with sudo (do not run random things with sudo!)." ;
    exit 1 ;
fi

source /opt/ros/melodic/setup.bash

sudo apt-get install -y \
    ros-melodic-joint-state-publisher-gui \
    ros-melodic-soem

mkdir -p ~/catkin_ws/src && cd ~/catkin_ws/src
git clone https://github.com/ros-industrial/robotiq.git

cd ~/catkin_ws
rosdep install --from-paths src --ignore-src -r -y

catkin_make

source ~/.bashrc

