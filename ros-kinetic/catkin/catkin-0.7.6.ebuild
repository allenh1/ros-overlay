# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit cmake-utils eutils

DESCRIPTION="Low-level build system macros and infrastructure for ROS."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/catkin-release/archive/release/kinetic/catkin/0.7.6-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="x86 amd64 arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
    dev-cpp/gtest
    dev-lang/python
    dev-python/catkin_pkg
    dev-python/empy
    dev-python/nose
"
DEPEND="${RDEPEND}
    dev-util/cmake
"

SLOT="0"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="opt/ros/kinetic"

src_unpack() {
    default
    mv *${P}* ${P}
}

src_configure() {
    append-cxxflags "-std=c++11"
    export DEST_SETUP_DIR="/${ROS_PREFIX}"
    local mycmakeargs=(
        -DCMAKE_INSTALL_PREFIX=${D}${ROS_PREFIX}
        -DCMAKE_PREFIX_PATH=/${ROS_PREFIX}
        -DPYTHON_INSTALL_DIR=lib64/python3.5/site-packages
        -DCATKIN_ENABLE_TESTING=OFF
        -DCATKIN_BUILD_BINARY_PACKAGE=0
     )
    cmake-utils_src_configure
}

src_compile() {
    gcc ${FILESDIR}/ros-python.c -o ${WORKDIR}/${P}/ros-python-kinetic || die 'could not compile ros-python!'
    cmake-utils_src_compile
}

src_install() {
    cd ${WORKDIR}/${P}
    mkdir -p ${D}/usr/bin
    cp ros-python-kinetic ${D}/usr/bin || die 'could not install ros-python!'
    cd ${WORKDIR}/${P}_build
    make install || die
}
