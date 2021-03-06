# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The turtlebot meta package provides all the basic drivers for running and u[...]"
HOMEPAGE="http://ros.org/wiki/turtlebot"
SRC_URI="https://github.com/${PN}-release/${PN}-release/archive/release/kinetic/${PN}/2.4.2-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/turtlebot_bringup
	ros-kinetic/turtlebot_capabilities
	ros-kinetic/turtlebot_description
	ros-kinetic/turtlebot_teleop
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
