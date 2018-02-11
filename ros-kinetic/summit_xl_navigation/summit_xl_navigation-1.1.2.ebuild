# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Navigation launch and config files for Summit XL robot."
HOMEPAGE="http://ros.org/wiki/summit_xl_navigation"
SRC_URI="https://github.com/RobotnikAutomation/summit_xl_common-release/archive/release/kinetic/${PN}/1.1.2-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/gmapping
	ros-kinetic/navigation
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
