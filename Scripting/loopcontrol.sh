#!/bin/bash


# Example1
i=0

while [[ $i -lt 5 ]]
do
  echo "Number: $i"
  ((i++))
  if [[ $i -eq 2 ]]; then
    break
  fi
done

echo 'All Done!'

# Example2

for i in {1..3}; do
  for j in {1..3}; do
    if [[ $j -eq 2 ]]; then
      break
    fi
    echo "j: $j"
  done
  echo "i: $i"
done

echo 'All Done!'


## Continue

# Example1

i=0

while [[ $i -lt 5 ]]; do
  ((i++))
  if [[ "$i" == '2' ]]; then
    continue
  fi
  echo "Number: $i"
done

echo 'All Done!'
