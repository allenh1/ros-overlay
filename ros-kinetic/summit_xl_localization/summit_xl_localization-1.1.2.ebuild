# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The summit_xl_localization package"
HOMEPAGE="http://ros.org/wiki/summit_xl_localization"
SRC_URI="https://github.com/RobotnikAutomation/summit_xl_common-release/archive/release/kinetic/${PN}/1.1.2-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/geographic_msgs
	ros-kinetic/geometry_msgs
	ros-kinetic/mavros_msgs
	ros-kinetic/message_filters
	ros-kinetic/message_runtime
	ros-kinetic/nav_msgs
	ros-kinetic/robot_localization
	ros-kinetic/robotnik_msgs
	ros-kinetic/roscpp
	ros-kinetic/sensor_msgs
	ros-kinetic/std_msgs
	ros-kinetic/std_srvs
	ros-kinetic/tf
	ros-kinetic/tf2
	ros-kinetic/tf2_geometry_msgs
	ros-kinetic/tf2_ros
	test? ( ros-kinetic/rosbag )
	test? ( ros-kinetic/rostest )
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
