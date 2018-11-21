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

echo "x - y: $var"
echo "x * y:" `expr $x \* $y`
echo "x / y:" `expr $x / $y`
echo "x % y:" `expr $x % $y`

# condition op
# 0. use for number
# 1. condition op could only using with if/while/until
# 2. condition expression should enclose by [] and should have a space 
#       eg:[1==2] is invalid
#          [ 1 == 2 ] is valid
if [ $x == $y ]
then 
    echo "$x == $y"
fi
if [ $x != $y ]
then 
    echo "$x != $y"
fi
# number equals
if [ 1 -eq 1 ]
then 
    echo "1 -eq 1"
fi
# number not equals
if [ 1 -ne 2 ]
then 
    echo "1 -ne 2"
fi
# number greater than
if [ 2 -gt 1 ]
then 
    echo "2 -gt 1"
fi
# number lower than
if [ 1 -lt 2 ]
then 
    echo "1 -lt 2"
fi
# number greater or equals
if [ 2 -ge 1 ]
then 
    echo "1 -ge 2"
fi
# number lower or equals
if [ 1 -le 2 ]
then 
    echo "1 -le 2"
fi

# boolean operator
if [ ! 1 == 2 ]
then 
    echo "! 1 == 2"
fi
if [ true -o false ]
then 
    echo "true -o false"
fi
if [ true -a true ]
then 
    echo "true -a true"
fi

# logical operator
# needed to enclose with [[]]
if [[ true || false ]]
then 
    echo "true || false"
fi
if [[ true && true ]]
then 
    echo "true && true"
fi

# string operator
if [ a = a ]
then 
    echo "a = a"
fi
if [ a != b ]
then 
    echo "a != b"
fi
# -z retuen true if length is 0
if [ -z $nostring ]
then 
    echo "-z retuen true if length is 0"
fi
# -n retuen true if length is not 0
if [ -n gotstring ]
then 
    echo "-n retuen true if length is not 0"
fi
if [ ! $nostring ]
then 
    echo "[ ! \$nostring ] return true"
fi

# file operator
selffile=$0
if [ -f $selffile ]
then 
    echo "$selffile is a normal file"
fi
if [ -e $selffile ]
then 
    echo "$selffile is exist"
fi
if [ -x $selffile ]
then 
    echo "$selffile is executable"
fi
if [ ! -d $selffile ]
then 
    echo "$selffile is not a directory"
fi