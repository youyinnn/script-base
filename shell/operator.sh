#!/bin/bash

# reference from: http://www.runoob.com/linux/linux-shell-basic-operators.html

# calculate op
# 1. use `` to enclose the expression
# 2. operator and the variable should hava space 
#       eg:1+1 is invalid
#          1 + 1 is valid
# 3. use expr to do the number calculation
# 4. useable op:
#       + - * / % = == !=
var=`expr 1 + 1`
echo $var

x=1
y=2
var=`expr $x - $y`

echo "x - y : $var"
echo `expr $x \* $y`
echo `expr $x / $y`
echo `expr $x % $y`

# condition op
# 1. condition op could only using with if/while/until
# 2. condition expression should enclose by [] and should have a space 
#       eg:[1==2] is invalid
#          [ 1 == 2 ] is valid
if [ $x == $y ]
then 
    echo "x == y"
fi
if [ $x != $y ]
then 
    echo "x != y"
fi