# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="This package contains the launch files that load the required controller in[...]"
HOMEPAGE="http://ros.org/wiki/summit_xl_control"
SRC_URI="https://github.com/RobotnikAutomation/summit_xl_sim-release/archive/release/kinetic/${PN}/1.0.9-2.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/robot_state_publisher
	ros-kinetic/ros_control
	ros-kinetic/ros_controllers
	ros-kinetic/summit_xl_pad
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
