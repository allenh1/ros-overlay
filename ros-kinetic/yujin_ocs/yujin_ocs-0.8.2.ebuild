# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Yujin Robot\'s open-source control software"
HOMEPAGE="http://ros.org/wiki/yujin_ocs"
SRC_URI="https://github.com/yujinrobot-release/${PN}-release/archive/release/kinetic/${PN}/0.8.2-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/yocs_cmd_vel_mux
	ros-kinetic/yocs_controllers
	ros-kinetic/yocs_diff_drive_pose_controller
	ros-kinetic/yocs_joyop
	ros-kinetic/yocs_keyop
	ros-kinetic/yocs_math_toolkit
	ros-kinetic/yocs_rapps
	ros-kinetic/yocs_safety_controller
	ros-kinetic/yocs_velocity_smoother
	ros-kinetic/yocs_virtual_sensor
	ros-kinetic/yocs_waypoints_navi
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
