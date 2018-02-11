# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Utilities for gateway users \(avoids large dependency requirements\)."
HOMEPAGE="http://ros.org/wiki/rocon_gateway_utils"
SRC_URI="https://github.com/yujinrobot-release/rocon_multimaster-release/archive/release/kinetic/${PN}/0.8.1-2.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/gateway_msgs
	ros-kinetic/rocon_console
	ros-kinetic/rocon_python_comms
	ros-kinetic/rosgraph
	ros-kinetic/rosservice
	test? ( ros-kinetic/rosunit )
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/rostest
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
