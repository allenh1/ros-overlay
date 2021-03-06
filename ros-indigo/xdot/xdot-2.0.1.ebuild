# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="XDotpy, by Jose Fonseca, is an interactive viewer for graphs written in	Gra"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/jbohren/xdot-release/archive/release/indigo/xdot/2.0.1-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	media-gfx/graphviz
	dev-python/wxpython
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

