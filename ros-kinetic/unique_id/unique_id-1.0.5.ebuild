# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="ROS Python and C++ interfaces for universally unique identifiers."
HOMEPAGE="http://ros.org/wiki/unique_id"
SRC_URI="https://github.com/ros-geographic-info/${PN}entifier-release/archive/release/kinetic/${PN}/1.0.5-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/roscpp
	ros-kinetic/rospy
	ros-kinetic/uuid_msgs
	test? ( ros-kinetic/rosunit )
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
