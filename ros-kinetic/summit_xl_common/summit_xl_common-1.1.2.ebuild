# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="URDF description of the Summit XL and Summit XL HL, platform messages and o[...]"
HOMEPAGE="http://ros.org/wiki/summit_xl_common"
SRC_URI="https://github.com/RobotnikAutomation/${PN}-release/archive/release/kinetic/${PN}/1.1.2-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/summit_xl_description
	ros-kinetic/summit_xl_localization
	ros-kinetic/summit_xl_navigation
	ros-kinetic/summit_xl_pad
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
