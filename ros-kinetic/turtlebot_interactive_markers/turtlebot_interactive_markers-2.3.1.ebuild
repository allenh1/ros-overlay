# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Interactive control for the TurtleBot using RViz and interactive markers"
HOMEPAGE="http://ros.org/wiki/turtlebot_interactive_markers"
SRC_URI="https://github.com/turtlebot-release/turtlebot_interactions-release/archive/release/kinetic/${PN}/2.3.1-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/interactive_markers
	ros-kinetic/roscpp
	ros-kinetic/turtlebot_bringup
	ros-kinetic/visualization_msgs
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
