# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Visualisation and simulation tools for Kobuki"
HOMEPAGE="http://ros.org/wiki/kobuki_desktop"
SRC_URI="https://github.com/yujinrobot-release/${PN}-release/archive/release/kinetic/${PN}/0.5.7-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/kobuki_dashboard
	ros-kinetic/kobuki_gazebo
	ros-kinetic/kobuki_gazebo_plugins
	ros-kinetic/kobuki_qtestsuite
	ros-kinetic/kobuki_rviz_launchers
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
