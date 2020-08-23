#!/bin/bash

# Decision making
# if...else statement
# case...esac statement

#Syntax:
#if [ expression ]
#then
#   Statement(s) to be executed if expression is true
#fi

#Example1:
a=10
b=20

if [ $a == $b ]
then
   echo "a is equal to b"
fi

if [ $a != $b ]
then
   echo "a is not equal to b"
fi


## Example2:
#
#Syntax
#if [ expression ]
#then
#   Statement(s) to be executed if expression is true
#else
#   Statement(s) to be executed if expression is not true
#fi

a=10
b=20

if [ $a == $b ]
then
   echo "a is equal to b"
else
   echo "a is not equal to b"
fi

# Example3:

#Syntax

#if [ expression 1 ]
#then
#   Statement(s) to be executed if expression 1 is true
#elif [ expression 2 ]
#then
#   Statement(s) to be executed if expression 2 is true
#elif [ expression 3 ]
#then
#   Statement(s) to be executed if expression 3 is true
#else
#   Statement(s) to be executed if no expression is true
#fi

a=10
b=20

if [ $a == $b ]
then
   echo "a is equal to b"
elif [ $a -gt $b ]
then
   echo "a is greater than b"
elif [ $a -lt $b ]
then
   echo "a is less than b"
else
   echo "None of the condition met"
fi

#Example4:

#Syntax:
#case word in
#   pattern1)
#      Statement(s) to be executed if pattern1 matches
#      ;;
#   pattern2)
#      Statement(s) to be executed if pattern2 matches
#      ;;
#   pattern3)
#      Statement(s) to be executed if pattern3 matches
#      ;;
#   *)
#     Default condition to be executed
#     ;;
#esac


FRUIT="kiwi"

case "$FRUIT" in
   "apple") echo "Apple pie is quite tasty."
   ;;
   "banana") echo "I like banana nut bread."
   ;;
   "kiwi") echo "New Zealand is famous for kiwi."
   ;;
esac

#Example5:

option="${1}"
case ${option} in
   -f) FILE="${2}"
      echo "File name is $FILE"
      ;;
   -d) DIR="${2}"
      echo "Dir name is $DIR"
      ;;
   *)
      echo "`basename ${0}`:usage: [-f file] | [-d directory]"
      exit 1 # Command to come out of the program with status 1
      ;;
esac