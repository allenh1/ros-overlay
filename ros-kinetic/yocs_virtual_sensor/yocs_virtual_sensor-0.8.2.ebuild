# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Virtual sensor that uses semantic map information to &quot;see&quot; obstac[...]"
HOMEPAGE="http://ros.org/wiki/yocs_virtual_sensor"
SRC_URI="https://github.com/yujinrobot-release/yujin_ocs-release/archive/release/kinetic/${PN}/0.8.2-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/geometry_msgs
	ros-kinetic/roscpp
	ros-kinetic/rospy
	ros-kinetic/rospy_message_converter
	ros-kinetic/sensor_msgs
	ros-kinetic/tf
	ros-kinetic/visualization_msgs
	ros-kinetic/yocs_math_toolkit
	ros-kinetic/yocs_msgs
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
