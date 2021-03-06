# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The nao_control package"
HOMEPAGE="https://github.com/ros-naoqi/nao_virtual/issues"
SRC_URI="https://github.com/ros-naoqi/nao_virtual-release/archive/release/kinetic/${PN}/0.0.6-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/controller_manager
	ros-kinetic/effort_controllers
	ros-kinetic/joint_state_controller
	ros-kinetic/joint_trajectory_controller
	ros-kinetic/robot_state_publisher
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
