# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Basic test nodes for Pyros dynamic ROS interface"
HOMEPAGE="https://github.com/asmodehn/pyros-test"
SRC_URI="https://github.com/asmodehn/pyros-test-release/archive/release/kinetic/${PN}/0.0.6-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/message_runtime
	ros-kinetic/rospy
	ros-kinetic/std_msgs
	test? ( ros-kinetic/rostest )
	test? ( ros-kinetic/rostopic )
	test? ( ros-kinetic/rosunit )
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/message_generation
	ros-kinetic/roslint
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
