#!/bin/bash

string=\
'00
00
10
00
aa
aa
AA'

echo -e "\n---- Remove consecutive duplicate lines ----"
echo "$string" | uniq

echo -e "\n---- Get count of consecutive duplicate lines----"
echo "$string" | uniq -c

echo -e "\n ---- Remove consecutive duplicate lines ignoring case (using -i) ----"
echo "$string" | uniq -ci

echo -e "\n---- Remove duplicate lines, compare by skipping first n characters using -s n ----"
echo "$string" | uniq -s 1
echo -e "---- Remove duplicate lines, compare by considering only first n characters using -w n ----"
echo -e "---- Remove duplicate lines, compare by skipping first n fields using -f n ----"

echo -e "\n ---- Only print lines which dont have consecutive duplicates ----"
echo "$string" | uniq -u

echo -e "\n---- Only print lines which have consecutive duplicates (without duplicates using -d) ----"
echo "$string" | uniq -d
echo -e "\n---- Only print lines which have consecutive duplicates (with duplicates using -D) ----"
echo "$string" | uniq -D