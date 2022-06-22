#!/bin/bash
filepath='sampleTexts/uniq.txt'

echo -e "\n---- Remove consecutive duplicate lines ----"
uniq $filepath

echo -e "\n---- Get count of consecutive duplicate lines----"
uniq -c $filepath

echo -e "\n ---- Remove consecutive duplicate lines ignoring case (using -i) ----"
uniq -ci $filepath

echo -e "\n---- Remove duplicate lines, compare by skipping first n characters using -s n ----"
uniq -s 1 $filepath
echo -e "---- Remove duplicate lines, compare by considering only first n characters using -w n ----"
echo -e "---- Remove duplicate lines, compare by skipping first n fields using -f n ----"

echo -e "\n ---- Only print lines which dont have consecutive duplicates ----"
uniq -u $filepath

echo -e "\n---- Only print lines which have consecutive duplicates (without duplicates using -d) ----"
uniq -d $filepath
echo -e "\n---- Only print lines which have consecutive duplicates (with duplicates using -D) ----"
uniq -D $filepath