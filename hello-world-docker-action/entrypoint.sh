#!/bin/sh -l

echo "Hello $1"
time=$(date)
echo ::set-output name=time::$time

yum install qt5-qtbase
yum install qt5-qtbase-devel
yum install qt5-qtscript-devel

