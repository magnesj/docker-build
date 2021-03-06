#!/bin/sh -l

yum install -y centos-release-scl
yum-config-manager --enable rhel-server-rhscl-7-rpms

yum install -y qt5-qtbase
yum install -y qt5-qtbase-devel
yum install -y qt5-qtscript-devel

yum install -y cmake
yum install -y git
yum install -y make

yum install -y mesa-libGL-devel
yum install -y freeglut-devel

yum install -y devtoolset-6
source /opt/rh/devtoolset-6/enable

cmake --version
git --version

git clone git://github.com/OPM/ResInsight.git ResInsight
mkdir cmakebuild
cd cmakebuild
cmake ../ResInsight
make -j8
