# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="A controller for driving a differential drive base to a pose goal or along [...]"
HOMEPAGE="http://ros.org/wiki/yocs_diff_drive_pose_controller"
SRC_URI="https://github.com/yujinrobot-release/yujin_ocs-release/archive/release/kinetic/${PN}/0.8.2-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/ecl_threads
	ros-kinetic/geometry_msgs
	ros-kinetic/nodelet
	ros-kinetic/pluginlib
	ros-kinetic/roscpp
	ros-kinetic/sensor_msgs
	ros-kinetic/std_msgs
	ros-kinetic/tf
	ros-kinetic/yocs_controllers
	ros-kinetic/yocs_math_toolkit
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
