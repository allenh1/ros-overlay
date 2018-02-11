# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The urdf_sim_tutorial package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/urdf_tutorial-release/archive/release/kinetic/${PN}/0.3.0-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/controller_manager
	ros-kinetic/diff_drive_controller
	ros-kinetic/gazebo_ros
	ros-kinetic/gazebo_ros_control
	ros-kinetic/joint_state_controller
	ros-kinetic/position_controllers
	ros-kinetic/robot_state_publisher
	ros-kinetic/rqt_robot_steering
	ros-kinetic/rviz
	ros-kinetic/urdf_tutorial
	ros-kinetic/xacro
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
