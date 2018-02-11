# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Miscellaneous tools for pyROS"
HOMEPAGE="https://github.com/asmodehn/pyros-utils"
SRC_URI="https://github.com/asmodehn/pyros-utils-release/archive/release/kinetic/${PN}/0.1.4-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/rosgraph
	ros-kinetic/roslaunch
	ros-kinetic/rospy
	ros-kinetic/rostest
	test? ( ros-kinetic/pyros_test )
	test? ( ros-kinetic/rosnode )
	test? ( ros-kinetic/rosunit )
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/catkin_pip
	ros-kinetic/roslint
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
