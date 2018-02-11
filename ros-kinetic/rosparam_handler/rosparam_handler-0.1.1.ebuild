# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="An easy wrapper for using parameters in ROS."
HOMEPAGE="https://github.com/cbandera/rosparam_handler.git"
SRC_URI="https://github.com/cbandera/${PN}-release/archive/release/kinetic/${PN}/0.1.1-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/catkin
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
