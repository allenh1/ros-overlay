# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="agvs Gazebo simulation packages"
HOMEPAGE="http://ros.org/wiki/agvs_sim"
SRC_URI="https://github.com/RobotnikAutomation/${PN}-release/archive/release/kinetic/${PN}/0.1.3-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/agvs_control
	ros-kinetic/agvs_gazebo
	ros-kinetic/agvs_robot_control
	ros-kinetic/agvs_sim_bringup
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
