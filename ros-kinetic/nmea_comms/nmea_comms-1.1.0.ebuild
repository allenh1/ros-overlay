# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The nmea_comms package provides helper nodes for transmitting and receiving[...]"
HOMEPAGE="http://wiki.ros.org/nmea_comms"
SRC_URI="https://github.com/ros-drivers-gbp/${PN}-release/archive/release/kinetic/${PN}/1.1.0-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/nmea_msgs
	ros-kinetic/roscpp
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/roslaunch
	ros-kinetic/roslint
	ros-kinetic/rostest
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
