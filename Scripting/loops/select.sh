#!/bin/bash


# 1. select loop

# Syntax:

# select var in word1 word2 ... wordN
# do
#    Statement(s) to be executed for every word.
# done


echo "Example1"

PS3="Please make a selection => " ; export PS3
select DRINK in tea cofee water juice appe all none
do
   case $DRINK in
      tea|cofee|water|all)
         echo "Go to canteen"
         ;;
      juice|appe)
         echo "Available at home"
      ;;
      none)
         break
      ;;
      *) echo "ERROR: Invalid selection"
      ;;
   esac
done

