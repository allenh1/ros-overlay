# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Implements synchronization and coordination functionalities of STDR Simulator."
HOMEPAGE="http://stdr-simulator-ros-pkg.github.io"
SRC_URI="https://github.com/stdr-simulator-ros-pkg/stdr_simulator-release/archive/release/kinetic/${PN}/0.3.2-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="GPL-3"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/actionlib
	ros-kinetic/map_server
	ros-kinetic/nav_msgs
	ros-kinetic/nodelet
	ros-kinetic/roscpp
	ros-kinetic/stdr_msgs
	ros-kinetic/tf
	ros-kinetic/visualization_msgs
	test? ( ros-kinetic/rostest )
	dev-cpp/yaml-cpp
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
