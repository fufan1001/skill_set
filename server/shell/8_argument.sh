#!/bib/bash

# how to pass argument to a shell script

# print out
echo "文件名是 $0"
echo "first $1"
echo "second $2"
echo "third $3"
echo "fouth $4"

# args as a str
echo $*

# how many args
echo $#

# current pid
echo $$

#the last backend running pid
echo $!

# error or not
echo $?
