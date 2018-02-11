# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Provides zeroconf services on avahi for ros systems.\
	 This is a c++ im[...]"
HOMEPAGE="http://wiki.ros.org/zeroconf_avahi"
SRC_URI="https://github.com/yujinrobot-release/${PN}_suite-release/archive/release/kinetic/${PN}/0.2.3-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/rosconsole
	ros-kinetic/roscpp
	ros-kinetic/zeroconf_msgs
	net-dns/avahi
	net-dns/avahi
	net-dns/avahi
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
