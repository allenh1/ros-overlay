# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Package which implements capabilities, including code to parse capability i[...]"
HOMEPAGE="http://wiki.ros.org/capabilities"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/kinetic/${PN}/0.2.0-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/bondpy
	ros-kinetic/message_runtime
	ros-kinetic/nodelet
	ros-kinetic/roslaunch
	ros-kinetic/rospy
	ros-kinetic/std_msgs
	ros-kinetic/std_srvs
	test? ( ros-kinetic/geometry_msgs )
	test? ( ros-kinetic/rosservice )
	dev-python/pyyaml
	test? ( dev-python/coverage )
	test? ( dev-python/mock )
	test? ( dev-python/pep8 )
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/message_generation
	ros-kinetic/rostest
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
