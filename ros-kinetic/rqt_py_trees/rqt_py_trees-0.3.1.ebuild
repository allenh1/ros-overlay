# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="rqt_py_trees provides a GUI plugin for visualizing py_trees behaviour trees[...]"
HOMEPAGE="http://ros.org/wiki/rqt_py_trees"
SRC_URI="https://github.com/stonier/${PN}-release/archive/release/kinetic/${PN}/0.3.1-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/geometry_msgs
	ros-kinetic/py_trees
	ros-kinetic/py_trees_msgs
	ros-kinetic/qt_dotgraph
	ros-kinetic/rospy
	ros-kinetic/rqt_bag
	ros-kinetic/rqt_graph
	ros-kinetic/rqt_gui
	ros-kinetic/rqt_gui_py
	ros-kinetic/unique_id
	dev-python/pygraphviz
	dev-python/rospkg
	dev-python/termcolor
	test? ( dev-python/mock )
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
