# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="This package provides ROS interfaces to the Neuronics Katana 450 arm.\
	[...]"
HOMEPAGE="http://ros.org/wiki/katana"
SRC_URI="https://github.com/uos-gbp/${PN}_driver-release/archive/release/kinetic/${PN}/1.1.2-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="GPL-1"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/actionlib
	ros-kinetic/control_msgs
	ros-kinetic/geometry_msgs
	ros-kinetic/katana_msgs
	ros-kinetic/kni
	ros-kinetic/moveit_msgs
	ros-kinetic/roscpp
	ros-kinetic/roslib
	ros-kinetic/sensor_msgs
	ros-kinetic/std_srvs
	ros-kinetic/tf
	ros-kinetic/trajectory_msgs
	ros-kinetic/urdf
	sci-libs/armadillo
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
