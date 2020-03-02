#!/bin/sh -l

echo "Hello $1"
time=$(date)
echo ::set-output name=time::$time

yum install -y qt5-qtbase
yum install -y qt5-qtbase-devel
yum install -y qt5-qtscript-devel

