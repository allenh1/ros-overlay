# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="roslaunch scripts for starting the TurtleBot3"
HOMEPAGE="http://turtlebot3.robotis.com"
SRC_URI="https://github.com/ROBOTIS-GIT-release/turtlebot3-release/archive/release/kinetic/${PN}/0.1.6-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/hls_lfcd_lds_driver
	ros-kinetic/robot_state_publisher
	ros-kinetic/rosserial_python
	ros-kinetic/turtlebot3_description
	ros-kinetic/turtlebot3_teleop
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
