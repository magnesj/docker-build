#!/bin/sh -l

echo "Hello $1"
time=$(date)
echo ::set-output name=time::$time

yum -y install qt5-qtbase
yum -y install qt5-qtbase-devel
yum -y install qt5-qtscript-devel
yum -y install cmake
yum -y install git
yum -y install gcc-c++

cmake --version
git --version

git clone git://github.com/OPM/ResInsight.git ResInsight
mkdir cmakebuild
cd cmakebuild
cmake ../ResInsight
make -j8