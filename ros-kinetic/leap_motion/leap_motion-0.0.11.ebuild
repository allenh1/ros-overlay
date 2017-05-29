# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="ROS driver for the Leap Motion gesture sensor"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/leap_motion-release/archive/release/kinetic/leap_motion/0.0.11-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/roscpp
    ros-kinetic/geometry_msgs
    ros-kinetic/std_msgs
    ros-kinetic/camera_info_manager
    ros-kinetic/roslib
    ros-kinetic/rospack
    ros-kinetic/message_runtime
    ros-kinetic/image_transport
    ros-kinetic/camera_calibration_parsers
    ros-kinetic/rospy
    ros-kinetic/visualization_msgs
"
DEPEND="${RDEPEND}
    ros-kinetic/message_generation
"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="opt/ros/kinetic"

src_unpack() {
    wget -O ${P}.tar.gz ${SRC_URI}
    tar -xf ${P}.tar.gz
    rm -f ${P}.tar.gz
    mv *${P}* ${P}
}

src_configure() {
    mkdir ${WORKDIR}/src
    cp -R ${WORKDIR}/${P} ${WORKDIR}/src/${P}
}

src_compile() {
    echo ""
}

src_install() {
    cd ../../work
    source /${ROS_PREFIX}/setup.bash
    catkin_make_isolated --install --install-space="${D}/${ROS_PREFIX}" || die
    if [[ -e ${D}/${ROS_PREFIX}/setup.bash ]]; then
        rm -f ${D}/${ROS_PREFIX}/{.catkin,_setup_util.py,env.sh,setup.bash,setup.sh}
        rm -f ${D}/${ROS_PREFIX}/{setup.zsh,.rosinstall}
    fi
}