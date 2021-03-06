# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="A simple, flexible and scalable 2D multi-robot simulator."
HOMEPAGE="http://stdr-simulator-ros-pkg.github.io"
SRC_URI="https://github.com/stdr-simulator-ros-pkg/${PN}-release/archive/release/kinetic/${PN}/0.3.2-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="GPL-3"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/stdr_gui
	ros-kinetic/stdr_launchers
	ros-kinetic/stdr_msgs
	ros-kinetic/stdr_parser
	ros-kinetic/stdr_resources
	ros-kinetic/stdr_robot
	ros-kinetic/stdr_samples
	ros-kinetic/stdr_server
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
