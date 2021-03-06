# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The pr2_mechanism stack contains the infrastructure to control the PR2 robot in "
HOMEPAGE="http://ros.org/wiki/pr2_mechanism"
SRC_URI="https://github.com/pr2-gbp/pr2_mechanism-release/archive/release/indigo/pr2_mechanism/1.8.16-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/pr2_controller_interface
	ros-indigo/pr2_controller_manager
	ros-indigo/pr2_hardware_interface
	ros-indigo/pr2_mechanism_diagnostics
	ros-indigo/pr2_mechanism_model
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

