# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Converts LaserScan to PointCloud messages."
HOMEPAGE="http://wiki.ros.org/laser_scan_matcher"
SRC_URI="https://github.com/ros-gbp/scan_tools-release/archive/release/kinetic/${PN}/0.3.2-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/pcl_conversions
	ros-kinetic/pcl_ros
	ros-kinetic/roscpp
	sci-libs/pcl
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	sci-libs/pcl
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
