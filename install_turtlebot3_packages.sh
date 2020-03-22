# Install TurtleBot3 on Meldoic of ROS
###### Tags: `ShellScripts` `ROS` `TurtleBot`
#!/usr/bin/env bash

#Base on ubuntu 18.04
#----------------------------------------------------------------------------------------------------------------------------
sudo apt -y update

sudo apt-get install -y \
    ros-melodic-joy \
    ros-melodic-teleop-twist-joy \
    ros-melodic-teleop-twist-keyboard \
    ros-melodic-laser-proc \
    ros-melodic-rgbd-launch \
    ros-melodic-depthimage-to-laserscan \
    ros-melodic-rosserial-arduino \
    ros-melodic-rosserial-python \
    ros-melodic-rosserial-server \
    ros-melodic-rosserial-client \
    ros-melodic-rosserial-msgs \
    ros-melodic-amcl \
    ros-melodic-map-server \
    ros-melodic-move-base \
    ros-melodic-urdf \
    ros-melodic-xacro \
    ros-melodic-compressed-image-transport \
    ros-melodic-rqt-image-view \
    ros-melodic-gmapping \
    ros-melodic-navigation \
    ros-melodic-interactive-markers

source /opt/ros/melodic/setup.bash
mkdir -p ~/catkin_ws/src
cd ~/turtlebot_ws/src/
git clone https://github.com/ROBOTIS-GIT/turtlebot3.git
git clone https://github.com/ROBOTIS-GIT/turtlebot3_msgs.git
git clone https://github.com/ROBOTIS-GIT/turtlebot3_simulations.git
source /opt/ros/melodic/setup.bash
cd ~/catkin_ws && catkin_make

