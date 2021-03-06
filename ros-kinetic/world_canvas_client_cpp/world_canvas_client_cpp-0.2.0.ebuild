# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="C++ client library to access semantic maps within the world canvas framework."
HOMEPAGE="http://ros.org/wiki/world_canvas_client_cpp"
SRC_URI="https://github.com/yujinrobot-release/world_canvas_libs-release/archive/release/kinetic/${PN}/0.2.0-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/roscpp
	ros-kinetic/unique_id
	ros-kinetic/uuid_msgs
	ros-kinetic/visualization_msgs
	ros-kinetic/world_canvas_msgs
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
