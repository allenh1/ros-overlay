# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Client implementation to use TF2 from Common Lisp"
HOMEPAGE="https://github.com/ros/roslisp_common/issues"
SRC_URI="https://github.com/ros-gbp/roslisp_common-release/archive/release/kinetic/${PN}/0.2.10-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/actionlib_lisp
	ros-kinetic/cl_transforms_stamped
	ros-kinetic/cl_utils
	ros-kinetic/roslisp
	ros-kinetic/tf2_msgs
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
