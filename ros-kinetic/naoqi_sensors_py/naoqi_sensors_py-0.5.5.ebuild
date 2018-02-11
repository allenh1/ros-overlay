# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="ROS driver for miscellaneous sensors on NAO.\
	Python bindings for camer[...]"
HOMEPAGE="http://ros.org/wiki/naoqi_sensors"
SRC_URI="https://github.com/ros-naoqi/naoqi_bridge-release/archive/release/kinetic/${PN}/0.5.5-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/camera_info_manager
	ros-kinetic/camera_info_manager_py
	ros-kinetic/dynamic_reconfigure
	ros-kinetic/naoqi_driver_py
	ros-kinetic/octomap
	ros-kinetic/rospy
	ros-kinetic/sensor_msgs
	dev-libs/boost
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/octomap_msgs
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
