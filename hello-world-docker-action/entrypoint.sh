#!/bin/sh -l

echo "Hello $1"
time=$(date)
echo ::set-output name=time::$time

yum -y install centos-release-scl
yum-config-manager --enable rhel-server-rhscl-7-rpms

yum -y install qt5-qtbase
yum -y install qt5-qtbase-devel
yum -y install qt5-qtscript-devel
yum -y install cmake
yum -y install git
yum -y install make
yum -y install mesa-libGL-devel
#yum -y install gcc-c++

yum -y install devtoolset-6
source /opt/rh/devtoolset-6/enable
#scl enable devtoolset-6 bash

cmake --version
git --version

git clone git://github.com/OPM/ResInsight.git ResInsight
mkdir cmakebuild
cd cmakebuild
cmake ../ResInsight
make -j8