# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Allows multipoint communication between rosserial\
	 nodes connected to [...]"
HOMEPAGE="http://ros.org/wiki/rosserial_xbee"
SRC_URI="https://github.com/ros-gbp/rosserial-release/archive/release/kinetic/${PN}/0.7.7-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/diagnostic_msgs
	ros-kinetic/rospy
	ros-kinetic/rosserial_msgs
	ros-kinetic/rosserial_python
	dev-python/pyserial
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
