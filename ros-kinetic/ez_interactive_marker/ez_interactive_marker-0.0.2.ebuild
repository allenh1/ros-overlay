# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Easily create interactive markers from yaml files"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/neka-nat/${PN}-release/archive/release/kinetic/${PN}/0.0.2-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/roslib
	ros-kinetic/rospy
	ros-kinetic/rospy_message_converter
	ros-kinetic/std_msgs
	ros-kinetic/tf
	ros-kinetic/visualization_msgs
	test? ( dev-python/nose )
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/interactive_markers
	ros-kinetic/rostest
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
