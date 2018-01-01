# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="OpenCV 3.x"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/lunar/${PN}/3.3.1-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/catkin
	virtual/ffmpeg
	virtual/jpeg
	media-libs/libpng
	sci-libs/vtk[qt5,rendering]
	media-libs/libwebp
	dev-libs/protobuf
	dev-lang/python
	dev-python/numpy
	sys-libs/zlib
"
DEPEND="${RDEPEND}
	dev-util/cmake
	media-libs/tiff
	media-libs/libv4l
	dev-libs/protobuf
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

src_configure() {
	filter-flags '-march=*' '-mcpu=*' '-mtune=*'
	ros-cmake_src_configure
}