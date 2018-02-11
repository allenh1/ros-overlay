# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="This stack contains all descriptions, drivers and bringup facilities for Ne[...]"
HOMEPAGE="http://ros.org/wiki/katana_driver"
SRC_URI="https://github.com/uos-gbp/${PN}-release/archive/release/kinetic/${PN}/1.1.2-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/katana
	ros-kinetic/katana_arm_gazebo
	ros-kinetic/katana_description
	ros-kinetic/katana_gazebo_plugins
	ros-kinetic/katana_moveit_ikfast_plugin
	ros-kinetic/katana_msgs
	ros-kinetic/katana_teleop
	ros-kinetic/katana_tutorials
	ros-kinetic/kni
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
