# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Module for working with rocon uri strings."
HOMEPAGE="http://ros.org/wiki/rocon_uri"
SRC_URI="https://github.com/yujinrobot-release/rocon_tools-release/archive/release/kinetic/${PN}/0.3.2-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/rocon_console
	ros-kinetic/rocon_ebnf
	ros-kinetic/rocon_python_utils
	ros-kinetic/rospy
	test? ( ros-kinetic/rosunit )
	dev-python/rospkg
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
