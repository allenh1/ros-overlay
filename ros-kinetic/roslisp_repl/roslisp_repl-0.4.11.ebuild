# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="This package provides a script that launches Emacs with Slime \(the\
	Su[...]"
HOMEPAGE="https://github.com/code-iai/ros_emacs_utils"
SRC_URI="https://github.com/code-iai-release/ros_emacs_utils-release/archive/release/kinetic/${PN}/0.4.11-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="public_domain"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/rosemacs
	ros-kinetic/roslisp
	ros-kinetic/slime_ros
	ros-kinetic/slime_wrapper
	dev-lisp/sbcl
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
