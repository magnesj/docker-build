#!/bin/sh -l

echo "Hello $1"
time=$(date)
echo ::set-output name=time::$time

yum install -y qt5-qtbase
yum install -y qt5-qtbase-devel
yum install -y qt5-qtscript-devel
yum install -y cmake
yum install -y git

cmake --version
git --version

git checkout https://github.com/OPM/ResInsight.git