#!/bin/bash

#Defining Variables
#Variables are defined as follows −

#Syntax:

#variable_name=variable_value

#Example1:

NAME="Rock Star"
echo $NAME
#Rock Star


#READONLY Variable
#!/bin/sh

NAME="Rock Star"
readonly NAME
NAME="Go"

#/bin/sh: NAME: This variable is read only

# Unsetting a varible
#unset variable_name

#Example1
NAME="Rock Star"
unset NAME
echo $NAME


#$0 - The filename of the current script.
#$n - These variables correspond to the arguments with which a script was invoked. Here n is a positive decimal number corresponding to the position of an argument (the first argument is $1, the second argument is $2, and so on).
#$# - The number of arguments supplied to a script.
#$* - All the arguments are double quoted. If a script receives two arguments, $* is equivalent to $1 $2.
#$@ - All the arguments are individually double quoted. If a script receives two arguments, $@ is equivalent to $1 $2.
#$? - The exit status of the last command executed.
#$$ - The process number of the current shell. For shell scripts, this is the process ID under which they are executing.
#$! - The process number of the last background command.


#Example2
#Arguements,

#./apple.sh apple orange lemon grapes
# $0 - name of the script
# $1 - apple
# $2 - orange
# $3 - lemon
