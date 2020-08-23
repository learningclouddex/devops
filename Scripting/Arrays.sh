#!/bin/bash

# Arrays

# Syntax:
# array_name[index]=value
# set -A array_name value1 value2 ... valuen
# array_name=(value1 ... valuen)

#Accessing arrays

#${array_name[index]}

# Two tpes of arrays
#Indexed array - key value pair, where the key is integer
#Assocatie arrays - key value pair where the key is string

#Indexed Array

# Creating an array
my_array=(foo bar)

# In this case we assigned multiple items at once to the array, but we can also insert one value at a time, specifying its index:
my_array[0]=foo

#Printing the value of the array
echo ${my_array[@]}
#Or even:
echo ${my_array[*]}

#Printing the number of elements in an array
echo ${#my_array[@]}

#Example2
for i in "${my_array[@]}"; do echo "$i"; done
#foo
#bar

#Example3
for i in "${my_array[*]}"; do echo "$i"; done
#foo bar

#Example4
my_array=(foo bar baz)
for index in "${!my_array[@]}"; do echo "$index"; done
#0
#1
#2

#Adding element to array
my_array=(foo bar)
my_array+=(baz foobar)
echo "${my_array[@]}"
#foo bar baz foobar

# Deleting an element
my_array=(foo bar baz)
unset my_array[1]
echo ${my_array[@]}
#foo baz

#=================================
#Assocatie Array
#Example1
declare -A my_array

# Add single element
my_array[foo]="bar"

# Add multiple elements at a time
my_array+=([baz]=foobar [foobarbaz]=baz)

declare -A my_array
my_array=([foo]=bar [baz]=foobar)
for key in "${!my_array[@]}"; do echo "$key"; done
#baz
#foo

declare -A my_array
# Add single element
my_array[foo]="bar"
