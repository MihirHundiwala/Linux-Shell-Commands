#!/bin/bash

string="$(cat ./sampleTexts/short.txt)"

echo -e "\n---- Replace characters using tr ----"
echo "---- Characters from set1 are replaced by characters from set2 ----"
echo "$string" | tr 'ei' 'uo'
echo "$string" | tr ' ' '\t'
echo "$string" | tr '()' '[]'

echo -e "\n---- Convert to upper/lower case ----"
echo "$string" | tr 'a-z' 'A-Z'
echo "$string" | tr [:upper:] [:lower:]

echo -e "\n---- Squeeze repetition of characters using -s ----"
echo "$string" | tr -s 'aeiou'

echo -e "\n---- Remove characters using -d ----"
echo "$string" | tr -d '0-9Gl'

echo -e "\n---- Complement the set using -c ----"
echo "---- Perform operation on all characters except the ones in set ----"
echo "$string" | tr -cd [:digit:]
echo
echo "$string" | tr -cds '1-9' '1-9'