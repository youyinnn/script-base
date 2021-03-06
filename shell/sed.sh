#!/bin/bash

# sed is a powerfull stream editor on linux
# Reference:http://man.linuxde.net/sed

# replace once with command s
echo aabbcc | sed 's/ab/AB/'
echo aabbcc | sed 's:ab:AB:'

# replace all with flag g
echo aababababababaaa | sed 's/ab/AB/g'

echo aa\\a\\a\\a\\a\\a\\abb | sed 's/\\a/x/g'

echo "replicas: 88" | sed "s/replicas: \{0,1\}[0-9]\{1,2\}/replicas: 5/g"