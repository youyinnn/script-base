#!/bin/bash

# exit when one commends's return is not 0(means success) 
set -e
# output the commend execution trace
# set -x
# -----------------------------
# for more info of set commend please refer to: 
# https://www.cnblogs.com/liduanjun/p/3536996.html
# -----------------------------


# shell parameter transfer
echo "shell script file name: $0";
echo "first param: $1";
echo "second param: $2";
echo "third param: $3";

# special useage
echo "number of parameters: $#"
echo "current bash PID: $$"
echo "current set options: $-"

# $* means all parameters as one
echo "-- \$* perform ---"
for i in "$*"; do
    echo $i
done

# $* means every single param
echo "-- \$@ perform ---"
for i in "$@"; do
    echo $i
done