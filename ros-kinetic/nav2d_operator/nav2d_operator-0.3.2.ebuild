# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The operator is a lightweight, purely reactive obstacle-avoidance\
	modu[...]"
HOMEPAGE="http://wiki.ros.org/nav2d_operator"
SRC_URI="https://github.com/skasperski/navigation_2d-release/archive/release/kinetic/${PN}/0.3.2-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="GPL-3"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/costmap_2d
	ros-kinetic/message_runtime
	ros-kinetic/roscpp
	ros-kinetic/sensor_msgs
	ros-kinetic/tf
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/message_generation
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
