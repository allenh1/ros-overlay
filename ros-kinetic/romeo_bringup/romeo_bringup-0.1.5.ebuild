# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The romeo_bringup package \
	contains launch and configuration files req[...]"
HOMEPAGE="http://www.ros.org/wiki/romeo_bringup"
SRC_URI="https://github.com/ros-aldebaran/romeo_robot-release/archive/release/kinetic/${PN}/0.1.5-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/naoqi_driver
	ros-kinetic/romeo_description
	ros-kinetic/romeo_sensors_py
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
