#!/bin/bash

echo -e "awk '/search pattern1/ {Actions}"
echo -e "     /search pattern2/ {Actions}' file"

echo -e "\n---- > Awk reads a file line by line ----"
echo -e "---- > Only Pattern can be given, if matched print the line ----"
echo -e "---- > Only action can be given, performed on all the lines ----"
echo -e "---- > Both can be given, if match found action is performed ----"
echo -e "---- > {} = Default action = print ----"

filepath='sampleTexts/awk.txt'


echo -e "\n---- Print all lines ----"
awk '{print;}' $filepath


echo -e "\n---- Print matching lines ----"
echo -e "\n---- Each search pattern should be on new line ----"
awk ' BEGIN {IGNORECASE=1}
/thomas/
/nisha/
' $filepath


echo -e "\n---- \$n can be used to print the fields ----"
echo -e "---- NF is a built-in variable stores total number of fields in the line ----"
awk '{print $2,$NF}' $filepath


echo -e "\n---- Actions can be performed at the beginning and end ----"
awk '
BEGIN {print "--- Starting of file ---"}
{
    print $1,$2;
}
END {print "--- End of file ---"}
' $filepath


echo -e "\n---- Match a field with an expression ----"
awk '$4 ~ /Technology/' $filepath


echo -e "\n---- We can create logical code with awk ----"
echo -e "---- Example calculate number of employees in technology ----"
awk '
BEGIN {count=0;}
$4 ~ /Technology/ {count=count+1;}
END {
    if (count < 5)
        print "Number of employees are less than 5";
    else
        print "Number of employees is larger than 5";
    print "Count of employees is",count;
}
' $filepath


: '
Output:

awk '/search pattern1/ {Actions}
     /search pattern2/ {Actions}' file

---- > Awk reads a file line by line ----
---- > Only Pattern can be given, if matched print the line ----
---- > Only action can be given, performed on all the lines ----
---- > Both can be given, if match found action is performed ----
---- > {} = Default action = print ----

---- Print all lines ----
100  Thomas  Manager    Sales       $5,000
200  Jason   Developer  Technology  $5,500
300  Sanjay  Sysadmin   Technology  $7,000
400  Nisha   Manager    Marketing   $9,500
500  Randy   DBA        Technology  $6,000

---- Print matching lines ----

---- Each search pattern should be on new line ----
100  Thomas  Manager    Sales       $5,000
400  Nisha   Manager    Marketing   $9,500

---- $n can be used to print the fields ----
---- NF is a built-in variable stores total number of fields in the line ----
Thomas $5,000
Jason $5,500
Sanjay $7,000
Nisha $9,500
Randy $6,000

---- Actions can be performed at the beginning and end ----
--- Starting of file ---
100 Thomas
200 Jason
300 Sanjay
400 Nisha
500 Randy
--- End of file ---

---- Match a field with an expression ----
200  Jason   Developer  Technology  $5,500
300  Sanjay  Sysadmin   Technology  $7,000
500  Randy   DBA        Technology  $6,000

---- We can create logical code with awk ----
---- Example calculate number of employees in technology ----
Number of employees are less than 5
Count of employees is 3

'