# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="URDF description of the Agvs and Agvs."
HOMEPAGE="http://wiki.ros.org/agvs_common"
SRC_URI="https://github.com/RobotnikAutomation/${PN}-release/archive/release/kinetic/${PN}/0.1.3-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/agvs_description
	ros-kinetic/agvs_pad
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
