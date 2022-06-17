#!/bin/bash

# The text is pipe separated (columns are separated by pipe character)
filepath="./sampleTexts/medium.txt"

echo -e "---- Sort alphabetically ----\n"
sort $filepath

echo -e "\n---- Sort numerically (use -n) the kth column (use -k)"
echo -e "---- for delimiter use -t ----\n"
sort $filepath -n -k2 -t$'|'

echo -e "\n---- Sort numerically (use -n) the kth column (use -k) in descending order (user -r for reverse)"
echo -e "---- for delimiter use -t ----\n"
sort $filepath -nr -k2 -t$'|'


text='Audi
BMW
Cadillac
BMW
Porsche
Dodge'
# OR
text=$(cat << EOF
Audi
BMW
Cadillac
BMW
Porsche
Dodge
EOF
)

echo -e "\n---- Report the first unsorted line ----"
echo "$text" | sort -c

echo -e "\n---- Sort and remove duplicate (use -u for unique) ----"
echo "$text" | sort -u

echo -e "\n---- Use -M for sorting months ----"
echo -e "---- Use -o for sorting and writing it to an already existing file ----"
echo -e "---- sort -o output.txt input.txt ----"
sort -o ./out.txt $filepath 
echo
cat ./out.txt