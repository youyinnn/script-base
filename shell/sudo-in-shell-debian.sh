#!/bin/bash

# exit when error & trace 
set -e
set -x

if [ $# -eq 0 ]
then 
    echo "Password needed."
    exit
fi

password=$1

# if you want to execute sudo with password pass from outside
# then option -S is needed
# eg:
#  echo $password | sudo -S yum install tcl

echo $password | sudo -S apt-get update

# make sure expect work
if [ `dpkg -l | grep tcl | wc -l` -eq 0 ]
then 
    echo "Tcl didn't install start to install tcl with yum..."
    echo $password | sudo -S apt-get -y install tcl
else 
    echo "Tcl installed."
fi
if [ `dpkg -l | grep expect | wc -l` -eq 0 ]
then 
    echo "Expect didn't install start to install Expect with yum..."
    echo $password | sudo -S apt-get -y install expect
else 
    echo "Expect installed."
fi