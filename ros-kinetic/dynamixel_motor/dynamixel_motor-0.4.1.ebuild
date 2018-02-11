# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="This stack contains packages that are used to interface with Robotis\
	D[...]"
HOMEPAGE="http://ros.org/wiki/dynamixel_driver"
SRC_URI="https://github.com/arebgun/${PN}-release/archive/release/kinetic/${PN}/0.4.1-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/dynamixel_controllers
	ros-kinetic/dynamixel_driver
	ros-kinetic/dynamixel_msgs
	ros-kinetic/dynamixel_tutorials
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
