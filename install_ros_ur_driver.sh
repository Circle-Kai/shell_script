# Install UniversalRobots Driver on Meldoic of ROS
###### Tags: `ShellScripts` `ROS` `UniversalRobots`
#!/usr/bin/env bash

#Base on ubuntu 18.04
#----------------------------------------------------------------------------------------------------------------------------

if [[ `id -u` -eq 0 ]] ; then
    echo "Do not run this with sudo (do not run random things with sudo!)." ;
    exit 1 ;
fi

source /opt/ros/melodic/setup.bash

sudo apt-get install -y ros-melodic-rqt-joint-trajectory-controller

mkdir -p ~/catkin_ws/src && cd ~/catkin_ws

git clone https://github.com/UniversalRobots/Universal_Robots_ROS_Driver.git src/Universal_Robots_ROS_Driver
git clone -b calibration_devel https://github.com/fmauch/universal_robot.git src/fmauch_universal_robot

sudo apt update -qq
rosdep update
rosdep install --from-paths src --ignore-src -y

catkin_make

source ~/.bashrc

