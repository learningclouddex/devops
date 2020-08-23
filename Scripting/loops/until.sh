#!/bin/bash


# 1. until loop

# Syntax:
# until command
# do
#    Statement(s) to be executed until command is true
# done
#until exexutes only when the condition is false

echo "Example1"
COUNTER=20
     until [ $COUNTER -lt 10 ]; do
         echo COUNTER $COUNTER
         let COUNTER-=1
     done



