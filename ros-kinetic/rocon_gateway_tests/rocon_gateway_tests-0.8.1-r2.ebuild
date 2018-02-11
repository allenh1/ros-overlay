# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Testing programs for gateways."
HOMEPAGE="http://ros.org/wiki/rocon_gateway_tests"
SRC_URI="https://github.com/yujinrobot-release/rocon_multimaster-release/archive/release/kinetic/${PN}/0.8.1-2.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	test? ( ros-kinetic/actionlib_tutorials )
	test? ( ros-kinetic/gateway_msgs )
	test? ( ros-kinetic/rocon_console )
	test? ( ros-kinetic/rocon_gateway )
	test? ( ros-kinetic/rocon_gateway_utils )
	test? ( ros-kinetic/rocon_hub )
	test? ( ros-kinetic/roscpp_tutorials )
	test? ( ros-kinetic/rospy )
	test? ( ros-kinetic/rospy_tutorials )
	test? ( ros-kinetic/rosunit )
	test? ( ros-kinetic/zeroconf_avahi )
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/rocon_test
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
