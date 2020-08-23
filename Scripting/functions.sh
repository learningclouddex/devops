#!/bin/bash

#Functions are used to run repeatable codes

#Syntax:
#
#function_name () {
#   list of commands
#}

Example1:

function remote_connect(){

  echo "this is a remote_connect function"
}

response() {

  echo "this is function response"

}

# Calling the function

remote_connect;
response;

# Nesting functions

apple () {

  echo "this is apple"
}

orange() {

  apple;
  echo "this is orange functions"

}

## calling
orange;

## Passing input to functions

func1 () {

   a=$1
   echo "The value is $a"

}

#Executing

func1 apple