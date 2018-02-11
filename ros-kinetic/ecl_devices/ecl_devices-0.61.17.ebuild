# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Provides an extensible and standardised framework for input-output devices."
HOMEPAGE="http://wiki.ros.org/ecl_devices"
SRC_URI="https://github.com/yujinrobot-release/ecl_core-release/archive/release/kinetic/${PN}/0.61.17-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/ecl_config
	ros-kinetic/ecl_containers
	ros-kinetic/ecl_errors
	ros-kinetic/ecl_license
	ros-kinetic/ecl_mpl
	ros-kinetic/ecl_threads
	ros-kinetic/ecl_type_traits
	ros-kinetic/ecl_utilities
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
