# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="<p>\
	  Metapackage for the Nao robot, providing access to:\
		- N[...]"
HOMEPAGE="http://wiki.ros.org/nao_interaction"
SRC_URI="https://github.com/ros-naoqi/${PN}-release/archive/release/kinetic/${PN}/0.1.5-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/nao_audio
	ros-kinetic/nao_interaction_launchers
	ros-kinetic/nao_interaction_msgs
	ros-kinetic/nao_vision
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
