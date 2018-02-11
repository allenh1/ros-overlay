# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Python and C++ interfaces for manipulating geodetic coordinates."
HOMEPAGE="http://wiki.ros.org/geodesy"
SRC_URI="https://github.com/ros-geographic-info/geographic_info-release/archive/release/kinetic/${PN}/0.5.2-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/geographic_msgs
	ros-kinetic/geometry_msgs
	ros-kinetic/sensor_msgs
	ros-kinetic/tf
	ros-kinetic/unique_id
	ros-kinetic/uuid_msgs
	test? ( ros-kinetic/rosunit )
	dev-python/pyproj
"
DEPEND="${RDEPEND}
	ros-kinetic/angles
	ros-kinetic/catkin
	dev-python/catkin_pkg
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
