# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="This package contains an URDF description of the Katana arm and all support[...]"
HOMEPAGE="http://ros.org/wiki/katana_description"
SRC_URI="https://github.com/uos-gbp/katana_driver-release/archive/release/kinetic/${PN}/1.1.2-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="GPL-1"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/transmission_interface
	ros-kinetic/urdf
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/convex_decomposition
	ros-kinetic/ivcon
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
