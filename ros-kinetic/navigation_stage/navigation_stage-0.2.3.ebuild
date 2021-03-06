# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="This package holds example launch files for running the ROS navigation stac[...]"
HOMEPAGE="http://www.ros.org/wiki/navigation_stage"
SRC_URI="https://github.com/ros-gbp/navigation_tutorials-release/archive/release/kinetic/${PN}/0.2.3-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/amcl
	ros-kinetic/fake_localization
	ros-kinetic/gmapping
	ros-kinetic/map_server
	ros-kinetic/move_base
	ros-kinetic/stage_ros
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
