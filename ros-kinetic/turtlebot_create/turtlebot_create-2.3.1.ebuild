# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Catkin metapackage for the turtlebot_create stack"
HOMEPAGE="http://ros.org/wiki/turtlebot_create"
SRC_URI="https://github.com/turtlebot-release/${PN}-release/archive/release/kinetic/${PN}/2.3.1-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/create_description
	ros-kinetic/create_driver
	ros-kinetic/create_node
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
