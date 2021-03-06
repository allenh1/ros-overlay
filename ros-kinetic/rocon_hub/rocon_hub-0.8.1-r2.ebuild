# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="A hub acts as a shared key-value store for multiple ros \
	systems \(pri[...]"
HOMEPAGE="http://ros.org/wiki/rocon_hub"
SRC_URI="https://github.com/yujinrobot-release/rocon_multimaster-release/archive/release/kinetic/${PN}/0.8.1-2.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/rocon_console
	ros-kinetic/rocon_gateway
	ros-kinetic/rocon_python_comms
	ros-kinetic/rocon_python_redis
	ros-kinetic/rocon_semantic_version
	ros-kinetic/rosgraph
	ros-kinetic/std_srvs
	net-dns/avahi
	net-dns/avahi
	dev-db/redis
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
