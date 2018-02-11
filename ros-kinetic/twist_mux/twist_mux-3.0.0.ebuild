# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Twist multiplexer, which multiplex several velocity commands \(topics\) and[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/kinetic/${PN}/3.0.0-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="CC-BY-NC-SA-4.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/diagnostic_updater
	ros-kinetic/geometry_msgs
	ros-kinetic/roscpp
	ros-kinetic/std_msgs
	ros-kinetic/twist_mux_msgs
	ros-kinetic/visualization_msgs
	test? ( ros-kinetic/rospy )
	test? ( ros-kinetic/rostopic )
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/rostest
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
