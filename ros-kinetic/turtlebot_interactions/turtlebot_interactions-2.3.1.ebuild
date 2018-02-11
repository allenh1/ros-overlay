# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Catkin meta-package for turtlebot_interactions"
HOMEPAGE="http://ros.org/wiki/turtlebot_interactions"
SRC_URI="https://github.com/turtlebot-release/${PN}-release/archive/release/kinetic/${PN}/2.3.1-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/turtlebot_dashboard
	ros-kinetic/turtlebot_interactive_markers
	ros-kinetic/turtlebot_rviz_launchers
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
