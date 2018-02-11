# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The summit_x_sim metapackage"
HOMEPAGE="http://wiki.ros.org/summit_x_sim"
SRC_URI="https://github.com/RobotnikAutomation/${PN}-release/archive/release/kinetic/${PN}/1.1.1-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/summit_x_control
	ros-kinetic/summit_x_gazebo
	ros-kinetic/summit_x_robot_control
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
