# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="a high-level FTP client library for Python"
HOMEPAGE="http://hg.sschwarzer.net/ftputil"
SRC_URI="https://github.com/asmodehn/ftputil-rosrelease/archive/release/kinetic/${PN}/3.3.0-3.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/catkin_pip
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
