# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The Create dashboard is a RQT-based plug-in for visualising data from the C[...]"
HOMEPAGE="http://ros.org/wiki/create_dashboard"
SRC_URI="https://github.com/turtlebot-release/turtlebot_create_desktop-release/archive/release/kinetic/${PN}/2.3.1-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/create_node
	ros-kinetic/diagnostic_msgs
	ros-kinetic/rospy
	ros-kinetic/rqt_gui
	ros-kinetic/rqt_gui_py
	ros-kinetic/rqt_robot_dashboard
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
