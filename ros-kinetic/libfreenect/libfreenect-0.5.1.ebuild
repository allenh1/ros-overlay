# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Open source libraries that will enable the Kinect to be used with Windows, [...]"
HOMEPAGE="http://ros.org/wiki/libfreenect"
SRC_URI="https://github.com/ros-drivers-gbp/${PN}-ros-release/archive/release/kinetic/${PN}/0.5.1-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/catkin
	media-libs/freeglut
	virtual/libusb:1
	x11-libs/libXi
	x11-libs/libXmu
"
DEPEND="${RDEPEND}
	dev-util/cmake
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
