# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Common tools for image based pipelines. Includes stereo and mono camera dri[...]"
HOMEPAGE="http://plasmodic.github.io/ecto_image_pipeline/"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/kinetic/${PN}/0.5.7-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/ecto
	ros-kinetic/ecto_opencv
	ros-kinetic/ecto_ros
	ros-kinetic/opencv_candidate
	test? ( ros-kinetic/rosunit )
	dev-libs/boost
	dev-cpp/eigen
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/cmake_modules
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
