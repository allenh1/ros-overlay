# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Set of tools provided by Aldebaran to convert Aldebaran files \(URDF, blend[...]"
HOMEPAGE="http://www.ros.org/wiki/naoqi_tools"
SRC_URI="https://github.com/ros-naoqi/naoqi_bridge-release/archive/release/kinetic/${PN}/0.5.5-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
