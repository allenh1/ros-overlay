# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="dynamixel_workbench_msgs package\
	This package includes ROS messages an[...]"
HOMEPAGE="http://wiki.ros.org/dynamixel_workbench"
SRC_URI="https://github.com/ROBOTIS-GIT-release/dynamixel-workbench-msgs-release/archive/release/kinetic/${PN}/0.1.6-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/message_generation
	ros-kinetic/std_msgs
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
