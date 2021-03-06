# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="This is a meta package for the official rosjava repositories."
HOMEPAGE="http://wiki.ros.org/rosjava"
SRC_URI="https://github.com/${PN}-release/${PN}-release/archive/release/kinetic/${PN}/0.3.0-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/genjava
	ros-kinetic/rosjava_bootstrap
	ros-kinetic/rosjava_build_tools
	ros-kinetic/rosjava_core
	ros-kinetic/rosjava_extras
	ros-kinetic/rosjava_messages
	ros-kinetic/rosjava_test_msgs
	ros-kinetic/zeroconf_jmdns_suite
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
