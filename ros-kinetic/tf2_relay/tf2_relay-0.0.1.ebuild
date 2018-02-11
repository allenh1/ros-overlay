# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Specialization of message_relay for tf2"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/clearpath-gbp/cpr_multimaster_tools-release/archive/release/kinetic/${PN}/0.0.1-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/message_relay
	ros-kinetic/roscpp
	ros-kinetic/tf
	ros-kinetic/tf2_msgs
	ros-kinetic/tf2_ros
	test? ( ros-kinetic/roslaunch )
	test? ( ros-kinetic/roslint )
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
