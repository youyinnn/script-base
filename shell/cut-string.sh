#!/bin/bash

s="vvvvccfhhtrtdultvjlvgdvrtbbjdfivkibeuujrljkb
vvvvccfhhtrtgghjdlthhiudrgcrtrekuvfergkfucek"

echo $s

# cut by a space
a=`echo ${s} | cut -d ' ' -f 1`
b=`echo ${s} | cut -d ' ' -f 2`

echo $a
echo $b
echo $a$b