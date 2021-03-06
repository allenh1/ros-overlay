# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="This package is for interfacing Onkyo sound system by JEISP API to ROS This p"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/rosalfred-release/smarthome_media_onkyo_driver-release/archive/release/indigo/smarthome_media_onkyo_driver/0.1.64-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="GPL-3"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/smarthome_common_driver
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/rosjava_build_tools
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

