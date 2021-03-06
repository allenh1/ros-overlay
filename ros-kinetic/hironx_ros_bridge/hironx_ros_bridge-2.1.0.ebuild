# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="ROS-OpenRTM interfacing package for the opensource version of Kawada\'s Hir[...]"
HOMEPAGE="http://ros.org/wiki/hironx_ros_bridge"
SRC_URI="https://github.com/tork-a/rtmros_hironx-release/archive/release/kinetic/${PN}/2.1.0-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="( BSD CC-BY-SA-3.0 )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/control_msgs
	ros-kinetic/hrpsys_ros_bridge
	ros-kinetic/moveit_commander
	ros-kinetic/openni2_launch
	ros-kinetic/rosbash
	ros-kinetic/roslang
	ros-kinetic/roslib
	ros-kinetic/rospy
	ros-kinetic/tf
	sci-visualization/gnuplot
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/mk
	ros-kinetic/rosbuild
	ros-kinetic/roslint
	app-arch/unzip
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
