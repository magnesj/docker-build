#!/bin/sh -l

echo "Hello $1"
time=$(date)
echo ::set-output name=time::$time

sudo yum install qt5-qtbase
sudo yum install qt5-qtbase-devel
sudo yum install qt5-qtscript-devel

