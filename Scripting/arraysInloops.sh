#!/bin/bash




#Example1

# Declare an array of string with type
declare -a StringArray=("Linux Mint" "Fedora" "Red Hat Linux" "Ubuntu" "Debian" )

# Iterate the string array using for loop
for val in ${StringArray[@]}; do
   echo $val
done

#Example2

str_array1=("Magento 2.2.4" "WooCommerce")
str_array2=("CodeIgnitor" "Laravel")
combine=(str_array1 str_array2)
for arrItem in ${combine[@]}
do
   eval 'for val in "${'$arrItem'[@]}";do echo "$val";done'
done

