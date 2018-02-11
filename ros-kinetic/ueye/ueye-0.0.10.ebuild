# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Driver for IDS Imaging uEye cameras."
HOMEPAGE="http://wiki.ros.org/ueye"
SRC_URI="https://github.com/kmhallen/${PN}-release/archive/release/kinetic/${PN}/0.0.10-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/camera_calibration_parsers
	ros-kinetic/dynamic_reconfigure
	ros-kinetic/image_transport
	ros-kinetic/nodelet
	ros-kinetic/roscpp
	ros-kinetic/roslib
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/roslaunch
	ros-kinetic/rostest
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
