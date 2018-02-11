# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Math toolkit for Yujin open control system. This package is intended to con[...]"
HOMEPAGE="http://ros.org/wiki/yocs_math_toolkit"
SRC_URI="https://github.com/yujinrobot-release/yujin_ocs-release/archive/release/kinetic/${PN}/0.8.2-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/ecl_build
	ros-kinetic/ecl_config
	ros-kinetic/ecl_exceptions
	ros-kinetic/ecl_formatters
	ros-kinetic/ecl_linear_algebra
	ros-kinetic/geometry_msgs
	ros-kinetic/roscpp
	ros-kinetic/tf
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
