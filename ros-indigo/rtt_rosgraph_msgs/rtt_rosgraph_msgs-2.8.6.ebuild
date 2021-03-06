# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Provides an rtt typekit for ROS rosgraph_msgs messages.\
\
	It allows yo[...]"
HOMEPAGE="http://ros.org/wiki/rtt_roscomm"
SRC_URI="https://github.com/orocos-gbp/rtt_ros_integration-release/archive/release/indigo/${PN}/2.8.6-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/rosgraph_msgs
	ros-indigo/rtt_roscomm
	ros-indigo/rtt_std_msgs
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
