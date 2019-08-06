#!/bin/bash

# how to use string in shell 

my_name="fufan"

greet="this is, $my_name"
greet_1="this is, ${my_name}"

echo greet $greet
echo greet_1 $greet_1

hello='this is ,$my_name'
hello_1='this is, ${my_name}'

echo hello,$hello
echo hello_1,$hello_1


str="Hello, I know you are \"$my_name\"! \n"
echo -e $str

echo ${#my_name}

echo ${my_name:2:4}

