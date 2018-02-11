# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The rocon_app_utilities package"
HOMEPAGE="http://wiki.ros.org/rocon_app_utilities"
SRC_URI="https://github.com/yujinrobot-release/rocon_app_platform-release/archive/release/kinetic/${PN}/0.9.1-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/rocon_console
	ros-kinetic/rocon_python_utils
	ros-kinetic/rocon_uri
	ros-kinetic/roslaunch
	dev-python/rospkg
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/roslint
	dev-python/catkin_pkg
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
