# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="SawYer Roch URDF description"
HOMEPAGE="http://ros.org/wiki/roch_descrption"
SRC_URI="https://github.com/SawYerRobotics-release/roch_robot-release/archive/release/kinetic/${PN}/2.0.15-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/robot_state_publisher
	ros-kinetic/urdf
	ros-kinetic/xacro
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/roslaunch
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
