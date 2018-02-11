# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="<p>The nao_robot metapackage contains some useful nodes to integrate the Na[...]"
HOMEPAGE="http://www.ros.org/wiki/nao_robot"
SRC_URI="https://github.com/ros-naoqi/${PN}-release/archive/release/kinetic/${PN}/0.5.15-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/nao_apps
	ros-kinetic/nao_bringup
	ros-kinetic/nao_description
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
