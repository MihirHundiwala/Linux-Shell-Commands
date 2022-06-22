#!/bin/bash

filepath='sampleTexts/grep.txt'

echo -e "\n---- Search for the given string in a file and print lines where match is found ----"
grep "line" $filepath

echo -e "\n---- Search case insensitively for the given string in a file and print lines where match is found ----"
grep -i "line" $filepath

echo -e "\n---- Match regex in a file and print lines where match is found ----"
grep "line.*case" $filepath

echo -e "\n---- Check for full words in a file and print lines where match is found ----"
echo -e "---- With -w ----"
grep -w "is" $filepath
echo -e "---- Without -w ----"
grep "is" $filepath

echo -e "\n---- To show only the matched strings use -o ----"
grep -o "is" $filepath

echo -e "\n---- To show count of lines where string was matched use -c ----"
grep -c "is" $filepath

echo -e "\n---- To show count of matched strings, pipe wc -l command ----"
grep -o "is" $filepath | wc -l

echo -e "\n---- To complement an operation use -v ----"
echo -e "---- For example: Lines that do not match or count of lines that do not match"

echo -e "\n---- To show position of matched string, use -b for byteoffset ----"
grep -bo "is" $filepath

echo -e "\n---- To show position of matched string, use -n for line number ----"
grep -no "is" $filepath


: '
---- Search for the given string in a file and print lines where match is found ----
this line is the 1st lower case line in this file.
One line above this line is empty.
And this is the last line.

---- Search case insensitively for the given string in a file and print lines where match is found ----
THIS LINE IS THE 1ST UPPER CASE LINE IN THIS FILE.
this line is the 1st lower case line in this file.
This Line Has All Its First Character Of The Word With Upper Case.
One line above this line is empty.
And this is the last line.

---- Match regex in a file and print lines where match is found ----
this line is the 1st lower case line in this file.

---- Check for full words in a file and print lines where match is found ----
---- With -w ----
this line is the 1st lower case line in this file.
One line above this line is empty.
And this is the last line.
---- Without -w ----
this line is the 1st lower case line in this file.
This Line Has All Its First Character Of The Word With Upper Case.
One line above this line is empty.
And this is the last line.

---- To show only the matched strings use -o ----
is
is
is
is
is
is
is
is

---- To show count of lines where string was matched use -c ----
4

---- To show count of matched strings, pipe wc -l command ----
8

---- To complement an operation use -v ----
---- For example: Lines that do not match or count of lines that do not match

---- To show position of matched string, use -b for byteoffset ----
54:is
62:is
94:is
106:is
191:is
199:is
216:is
214:is

---- To show position of matched string, use -n for line number ----
2:is
2:is
2:is
3:is
5:is
5:is
6:is
6:is

'