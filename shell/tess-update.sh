#!/bin/bash

#set -e
#set -x

# tess upgrade ensurance
if [ `/tess version | grep -Eo "New version release-[0-9]+\.[0-9]+\.[0-9]+" | wc -c` -eq 0 ]
then 
    echo "Your Tess CLI is on latest version."
else
    new_version=`/tess version | grep -Eo "New version release-[0-9]+\.[0-9]+\.[0-9]+" | grep -Eo "release-[0-9]+\.[0-9]+\.[0-9]+"`
    echo "Your Tess CLI is on old version, updating tess.."
    /tess install $new_version
    echo "Tess updated."
fi