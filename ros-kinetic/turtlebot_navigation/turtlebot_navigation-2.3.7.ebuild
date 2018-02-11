# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="turtlebot_navigation"
HOMEPAGE="http://ros.org/wiki/turtlebot_navigation"
SRC_URI="https://github.com/turtlebot-release/turtlebot_apps-release/archive/release/kinetic/${PN}/2.3.7-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/amcl
	ros-kinetic/dwa_local_planner
	ros-kinetic/gmapping
	ros-kinetic/map_server
	ros-kinetic/move_base
	ros-kinetic/roscpp
	ros-kinetic/sensor_msgs
	ros-kinetic/tf
	ros-kinetic/turtlebot_bringup
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
