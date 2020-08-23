#!/bin/bash


# 1. while loop

# Syntax:
# while command
# do
#    Statement(s) to be executed if command is true
# done

# While run if the condtion is true

echo "Example1"
COUNTER=0
     while [ $COUNTER -lt 10 ]; do
         echo The counter is $COUNTER
         let COUNTER+=1
     done

echo "Example2"
while :
do
  echo "Press <CTRL+C> to exit."
  sleep 1
done

