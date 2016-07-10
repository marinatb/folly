#!/bin/bash

mk-build-deps
sudo dpkg -i folly-build-deps_1.0_all.deb 

DEB_BUILD_OPTIONS=nocheck parallel=`nproc` debuild

