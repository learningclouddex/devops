#!/bin/bash


#Arithmetic Operators
##Relational Operators
##Boolean Operators
##String Operators
##File Test Operators

#Operators:
#   - - subtraction
#   + - addition
#   / - divison
#   * - multiplicaiton
#   == - equality check (-eq for numeric values)
#   != - not equals to (-ne)
#   >= - greater than or equal to (-gt)
#   <= - less than or equal to (-lt)
#   % - modulo
# -a - and
# -o - or
# -z -  check if zero
# -n - check if not zero
# -d - check it is a directory
# -e - check file/directory exists

#Example1
val=`expr 2 + 2`
echo "Total value : $val"

val=`expr 2 / 2`
echo "Total value : $val"

val=`expr 2 * 2`
echo "Total value : $val"