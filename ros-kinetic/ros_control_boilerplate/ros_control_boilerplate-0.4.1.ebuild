# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Simple simulation interface and template for setting up a hardware interfac[...]"
HOMEPAGE="https://github.com/davetcoleman/ros_control_boilerplate"
SRC_URI="https://github.com/davetcoleman/${PN}-release/archive/release/kinetic/${PN}/0.4.1-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/actionlib
	ros-kinetic/control_msgs
	ros-kinetic/control_toolbox
	ros-kinetic/controller_manager
	ros-kinetic/hardware_interface
	ros-kinetic/joint_limits_interface
	ros-kinetic/roscpp
	ros-kinetic/rosparam_shortcuts
	ros-kinetic/sensor_msgs
	ros-kinetic/std_msgs
	ros-kinetic/trajectory_msgs
	ros-kinetic/transmission_interface
	ros-kinetic/urdf
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/cmake_modules
	dev-cpp/gflags
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
