#!/bin/bash

# exit when error & trace 
set -e
set -x

# make sure expect work
if [ `yum list installed | grep tcl | wc -l` -eq 0 ]
then 
    echo "Tcl didn't install start to install tcl with yum..."
    sudo yum install tcl
else 
    echo "Tcl installed."
fi
if [ `yum list installed | grep expect | wc -l` -eq 0 ]
then 
    echo "Expect didn't install start to install Expect with yum..."
    sudo yum install expect
else 
    echo "Expect installed."
fi

# make sure tess executable&env path
if [ `ls | grep ^tess\& | wc -l` -eq 0 ]
then 
    echo "Have found tess."
    if [ -x tess ]
    then 
        echo "Tess executable."
    else 
        echo "Tess unexecutable."
        chmod +x tess
    fi
fi

set +x

export PATH=$PATH:.
source ~/.bashrc

expect ./tess-login-with-expect.sh $1 $2 $3

