# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Communication types \(msgs/srvs/actions\) for robotics in concert \(aka mul[...]"
HOMEPAGE="http://www.ros.org/wiki/rocon_msgs"
SRC_URI="https://github.com/yujinrobot-release/${PN}-release/archive/release/kinetic/${PN}/0.9.0-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/concert_msgs
	ros-kinetic/concert_service_msgs
	ros-kinetic/gateway_msgs
	ros-kinetic/rocon_app_manager_msgs
	ros-kinetic/rocon_device_msgs
	ros-kinetic/rocon_interaction_msgs
	ros-kinetic/rocon_service_pair_msgs
	ros-kinetic/rocon_std_msgs
	ros-kinetic/rocon_tutorial_msgs
	ros-kinetic/scheduler_msgs
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
