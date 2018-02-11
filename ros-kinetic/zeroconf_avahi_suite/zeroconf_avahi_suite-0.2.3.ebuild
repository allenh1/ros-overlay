# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Suite of packages supporing the avahi implementation of zeroconf for ros."
HOMEPAGE="http://www.ros.org/wiki/zeroconf_avahi_suite"
SRC_URI="https://github.com/yujinrobot-release/${PN}-release/archive/release/kinetic/${PN}/0.2.3-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/zeroconf_avahi
	ros-kinetic/zeroconf_avahi_demos
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
