#!/bin/bash
echo "First line on shell script defined the shell client that this script file use."

# To run shell script, there was two ways:
# First: as runnable script:
# # chmod +x ./test.sh
# # ./test.sh
# Second: run by interpreter:
# # sh test.sh

# variable defination
name="youyinnn"
# refer the varavle use '$'
echo $name
# set variable as readonly
readonly name
name = "xixi"
# delete variable (can't delete the readonly variable)
age=12
unset age
# nothing output here
echo $age

# string usage
string="abcd"
# get length
echo ${#string}
# substring
string="runoob is a great site"
echo ${string:1:${#string}} # 输出 unoo

# array defination
arr=(value0 value1 value2 value3)
# array element index
echo ${arr[1]}
# get all element
echo ${arr[@]}
# get length
echo ${#arr[@]}