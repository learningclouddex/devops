#!/bin/bash

# 1. for loops

# Syntax:
#for var in word1 word2 ... wordN
#do
#   Statement(s) to be executed for every word.
#done

echo "Example1"
for var in 0 1 2 3 4 5
do
   echo $var
done

echo "Running loop {0..3}"
for i in {0..3}
do
  echo "Number: $i"
done

echo "range example {0..20..5}"
for i in {0..20..5}
do
  echo "Number: $i"
done

echo "C type for loop"
for ((i = 0 ; i <= 5 ; i++)); do
  echo "Counter: $i"
done

echo "running loop inside a folder"
for FILE in $HOME/.bash*
do
   echo $FILE
done

echo "running loops in seq"
for i in `seq 0 4`
do
   echo $FILE
done