# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Navigation related tutorials."
HOMEPAGE="http://www.ros.org/wiki/navigation_tutorials"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/kinetic/${PN}/0.2.3-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/laser_scan_publisher_tutorial
	ros-kinetic/navigation_stage
	ros-kinetic/odometry_publisher_tutorial
	ros-kinetic/point_cloud_publisher_tutorial
	ros-kinetic/robot_setup_tf_tutorial
	ros-kinetic/roomba_stage
	ros-kinetic/simple_navigation_goals_tutorial
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
