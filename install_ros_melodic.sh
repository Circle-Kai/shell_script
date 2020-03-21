# Install ROS Melodic
###### Tags: `ShellScripts` `ROS` `Melodic`
#!/usr/bin/env bash

#Install Melodic of ROS on Ubuntu 18.04
#----------------------------------------------------------------------------------------------------------------------------

if [[ `id -u` -eq 0 ]] ; then
    echo "Do not run this with sudo (do not run random things with sudo!)." ;
    exit 1 ;
fi
# Installation
# 1.1 Configure your Ubuntu repositories

# 1.2 Setup your sources.list
#Setup your computer to accept software from packages.ros.org.
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'

# 1.3 Set up your keys
sudo apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654

# 1.4 Installation
sudo apt update

# 1.5 Initialize rosdep
sudo rosdep init
rosdep update

# 1.6 Environment setup
echo "source /opt/ros/melodic/setup.bash" >> ~/.bashrc
source ~/.bashrc

# 1.7 Dependencies for building packages
#To install this tool and other dependencies for building ROS packages, run:
sudo apt install -y \
    python-rosinstall \
    python-rosinstall-generator \
    python-wstool \
    build-essential

# 2 Creating a workspace for catkin
source /opt/ros/melodic/setup.bash
mkdir -p ~/catkin_ws/src
cd ~/catkin_ws/
catkin_make

echo "source ~/catkin_ws/devel/setup.bash" >> ~/.bashrc
source ~/.bashrc
