#!/bin/bash

set -e
# set -x

version=`uname -a | grep -o Msys | wc -c`

echo ${version}

echo "xixi"