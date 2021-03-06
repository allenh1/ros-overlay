# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The smach viewer is a GUI that shows the state of hierarchical\
	SMACH s[...]"
HOMEPAGE="http://ros.org/wiki/smach_viewer"
SRC_URI="https://github.com/jbohren/executive_smach_visualization-release/archive/release/kinetic/${PN}/2.0.2-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/smach_msgs
	ros-kinetic/smach_ros
	media-gfx/graphviz
	dev-python/wxpython
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/rostest
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
