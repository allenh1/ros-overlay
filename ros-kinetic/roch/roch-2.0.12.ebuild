# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="roch Project"
HOMEPAGE="http://ros.org/wiki/roch"
SRC_URI="https://github.com/SawYerRobotics-release/${PN}-release/archive/release/kinetic/${PN}/2.0.12-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/roch_follower
	ros-kinetic/roch_navigation
	ros-kinetic/roch_rapps
	ros-kinetic/roch_teleop
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
