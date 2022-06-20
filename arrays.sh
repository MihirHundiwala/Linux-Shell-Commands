#!/bin/bash

echo "---- When each element is on new line ----"
while read -p "Enter element: " element
do
    # arr+=($element)               # Method 1
    arr=(${arr[@]} $element)        # Method 2 
done
echo ${arr[@]}

echo -e "\n---- When elements are on the same line ----"
read -p "Enter elements: " -a arr
echo ${arr[@]}

echo -e "\n---- Display an element from the array ----"
index=2
echo ${arr[$index]}

echo -e "\n---- Display a sliced array ----"
echo ${arr[@]:3:2}         # SLice two elements starting from the 3rd index 