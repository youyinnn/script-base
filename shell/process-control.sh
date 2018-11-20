#!/bin/bash

# if else if
if [ false ]
then 
    echo "false"
elif [ true ]
then 
    echo "true"
fi

# for
for var in 1 2 3 4
do
    echo $var
done
# for-each an array
# reference from: https://blog.csdn.net/Lockey23/article/details/74625744?locationNum=9&fps=1
arr=("a" "b" "c")
for a in ${arr[*]}
do
    echo ${a}
done

# while
# let is use for calculate variable without $
int=6
while [ $int -le 10 ]
do 
    echo $int
    let int++
done