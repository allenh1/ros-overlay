# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="multisense catkin driver"
HOMEPAGE="http://ros.org/wiki/multisense"
SRC_URI="https://github.com/carnegieroboticsllc/${PN}_ros-release/archive/release/kinetic/${PN}/4.0.0-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/multisense_bringup
	ros-kinetic/multisense_cal_check
	ros-kinetic/multisense_description
	ros-kinetic/multisense_lib
	ros-kinetic/multisense_ros
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
