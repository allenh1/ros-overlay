# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="This package contains test and demo programs for the katana_driver stack."
HOMEPAGE="http://ros.org/wiki/katana_tutorials"
SRC_URI="https://github.com/uos-gbp/katana_driver-release/archive/release/kinetic/${PN}/1.1.2-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="GPL-1"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/actionlib
	ros-kinetic/control_msgs
	ros-kinetic/roscpp
	ros-kinetic/sensor_msgs
	ros-kinetic/trajectory_msgs
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
