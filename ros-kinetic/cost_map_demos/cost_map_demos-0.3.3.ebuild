# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Demonstrations for cost maps."
HOMEPAGE="https://github.com/stonier/cost_map"
SRC_URI="https://github.com/stonier/cost_map-release/archive/release/kinetic/${PN}/0.3.3-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/cost_map_ros
	ros-kinetic/cost_map_visualisations
	ros-kinetic/costmap_2d
	ros-kinetic/ecl_build
	ros-kinetic/ecl_console
	ros-kinetic/nav_msgs
	ros-kinetic/roscpp
	ros-kinetic/rviz
	ros-kinetic/tf
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
