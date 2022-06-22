#!/bin/bash

filepath='sampleTexts/tr.txt'
string="$(cat ./sampleTexts/tr.txt)"

echo -e "\n---- Replace characters using tr ----"
echo "---- Characters from set1 are replaced by characters from set2 ----"
tr 'ei' 'uo' < $filepath
echo
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


: '
---- Replace characters using tr ----
---- Characters from set1 are replaced by characters from set2 ----
Wulcomu to my GotHub (111222333444555)
Welcome to      my      GitHub  (111222333444555)
Welcome to my GitHub [111222333444555]

---- Convert to upper/lower case ----
WELCOME TO MY GITHUB (111222333444555)
welcome to my github (111222333444555)

---- Squeeze repetition of characters using -s ----
Welcome to my GitHub (111222333444555)

---- Remove characters using -d ----
Wecome to my itHub ()

---- Complement the set using -c ----
---- Perform operation on all characters except the ones in set ----
111222333444555
12345

'