# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Some fast/convenient type converters, mostly for char strings or strings.\
[...]"
HOMEPAGE="http://wiki.ros.org/ecl_converters"
SRC_URI="https://github.com/yujinrobot-release/ecl_core-release/archive/release/kinetic/${PN}/0.61.17-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/ecl_concepts
	ros-kinetic/ecl_config
	ros-kinetic/ecl_errors
	ros-kinetic/ecl_exceptions
	ros-kinetic/ecl_license
	ros-kinetic/ecl_mpl
	ros-kinetic/ecl_type_traits
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
