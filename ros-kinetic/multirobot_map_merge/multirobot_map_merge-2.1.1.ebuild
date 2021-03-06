# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Merging multiple maps without knowledge of initial\
  positions of robots."
HOMEPAGE="http://wiki.ros.org/multirobot_map_merge"
SRC_URI="https://github.com/hrnr/m-explore-release/archive/release/kinetic/${PN}/2.1.1-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/geometry_msgs
	ros-kinetic/map_msgs
	ros-kinetic/nav_msgs
	ros-kinetic/opencv3
	ros-kinetic/roscpp
	ros-kinetic/tf2_geometry_msgs
	test? ( ros-kinetic/roslaunch )
	test? ( ros-kinetic/rosunit )
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
