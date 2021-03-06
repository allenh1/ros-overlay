# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="A gui in Qt for visualizing purposes in STDR Simulator."
HOMEPAGE="http://stdr-simulator-ros-pkg.github.io"
SRC_URI="https://github.com/stdr-simulator-ros-pkg/stdr_simulator-release/archive/release/kinetic/${PN}/0.3.2-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="GPL-3"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/nav_msgs
	ros-kinetic/roscpp
	ros-kinetic/roslib
	ros-kinetic/sensor_msgs
	ros-kinetic/stdr_msgs
	ros-kinetic/stdr_parser
	ros-kinetic/stdr_robot
	ros-kinetic/stdr_server
	ros-kinetic/tf
	dev-qt/qtcore:4
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	dev-qt/qtcore:4
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
