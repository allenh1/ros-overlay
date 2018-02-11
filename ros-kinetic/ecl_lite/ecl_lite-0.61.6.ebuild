# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Libraries and utilities for embedded and low-level linux development."
HOMEPAGE="http://www.ros.org/wiki/ecl_lite"
SRC_URI="https://github.com/yujinrobot-release/${PN}-release/archive/release/kinetic/${PN}/0.61.6-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/ecl_config
	ros-kinetic/ecl_converters_lite
	ros-kinetic/ecl_errors
	ros-kinetic/ecl_io
	ros-kinetic/ecl_sigslots_lite
	ros-kinetic/ecl_time_lite
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
