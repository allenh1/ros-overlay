# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The rb1_base_common package. It contains rb1 base common packages used for [...]"
HOMEPAGE="http://wiki.ros.org/rb1_base_common"
SRC_URI="https://github.com/RobotnikAutomation/${PN}-release/archive/release/kinetic/${PN}/1.1.0-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/rb1_base_description
	ros-kinetic/rb1_base_pad
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
