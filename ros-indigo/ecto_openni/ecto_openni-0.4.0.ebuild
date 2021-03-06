# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Ecto bindings for the openni sensor"
HOMEPAGE="http://plasmodic.github.io/ecto_openni"
SRC_URI="https://github.com/ros-gbp/ecto_openni-release/archive/release/indigo/ecto_openni/0.4.0-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/cv_bridge
	ros-indigo/ecto
	dev-libs/boost
	dev-libs/OpenNi
	virtual/libusb:1
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

