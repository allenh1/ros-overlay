# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Topic tools for treating messages as variant types."
HOMEPAGE="http://github.com/ethz-asl/ros-topic-variant"
SRC_URI="https://github.com/ethz-asl/variant-release/archive/release/kinetic/${PN}/0.1.3-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="GPL-1"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/roscpp
	ros-kinetic/roslib
	ros-kinetic/variant_msgs
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
