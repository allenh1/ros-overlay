# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The Kobuki dashboard is a RQT-based plug-in for visualising data from Kobuk[...]"
HOMEPAGE="http://ros.org/wiki/kobuki_dashboard"
SRC_URI="https://github.com/yujinrobot-release/kobuki_desktop-release/archive/release/kinetic/${PN}/0.5.7-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/kobuki_msgs
	ros-kinetic/rospy
	ros-kinetic/rqt_robot_dashboard
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
