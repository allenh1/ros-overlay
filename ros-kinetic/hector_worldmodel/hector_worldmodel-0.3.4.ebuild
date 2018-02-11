# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The hector_worldmodel stack helps to collect and fuse information about obj[...]"
HOMEPAGE="http://ros.org/wiki/hector_worldmodel"
SRC_URI="https://github.com/tu-darmstadt-ros-pkg-gbp/${PN}-release/archive/release/kinetic/${PN}/0.3.4-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/hector_object_tracker
	ros-kinetic/hector_worldmodel_geotiff_plugins
	ros-kinetic/hector_worldmodel_msgs
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
