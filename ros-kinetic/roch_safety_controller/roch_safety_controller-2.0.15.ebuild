# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="A controller ensuring the safe operation of roch.\
\
	The SafetyControll[...]"
HOMEPAGE="http://wiki.ros.org/roch_safety_controller"
SRC_URI="https://github.com/SawYerRobotics-release/roch_robot-release/archive/release/kinetic/${PN}/2.0.15-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/ecl_threads
	ros-kinetic/geometry_msgs
	ros-kinetic/roch_msgs
	ros-kinetic/roscpp
	ros-kinetic/std_msgs
	ros-kinetic/yocs_controllers
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
