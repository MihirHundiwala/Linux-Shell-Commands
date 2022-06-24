#!/bin/bash

filepath='sampleTexts/sed.txt'

echo -e "\n\n---- sed command operates line by line on a file ----"

echo -e "\n\n---- Replacing the first occurence of a string using 's' ----"
sed 's/unix/linux/' $filepath

echo -e "\n\n---- Replacing the nth occurence of a string using 's/../n' n=2 ----"
sed 's/unix/linux/2' $filepath

echo -e "\n\n---- Replacing all occurences of a string using 's/../g' ----"
sed 's/unix/linux/g' $filepath

echo -e "\n\n---- Replacing all occurence from the nth occurence of a string using 's/../ng' ----"
sed "s/unix/linux/2g" $filepath

echo -e "\n---- Using & to denote the matched string ----"
sed 's/unix/{&}/g' $filepath
echo 
sed 's/unix/&&/g' $filepath

echo -e "\n\n---- Use () to remember the matched string ----"
echo "---- We swapped the matched words ----"
sed 's/\(unix\)\(linux\)/\2\1/g' $filepath

echo -e "\n\n---- Replacing a string on specific line number ----"
sed '1 s/unix/linux/g' $filepath

echo -e "\n\n---- Replacing a string on a range of lines ----"
sed '1,3 s/unix/linux/g' $filepath

echo -e "\n----Multiple sed commands using -e ----"
sed -e 's/unix/linux/' -e '1 s/os/system/g' $filepath

echo -e "\n\n---- sed can work as grep as well as tr command ----"

echo -e "\n----sed working as grep command ----"
sed -n '/unix/ p' $filepath
echo -e "\n----sed working as grep -v command ----"
sed -n '/unix/ !p' $filepath

echo -e "\n----sed working as tr command ----"
sed 'y/sy/mi/' $filepath




: '
Output: 

---- sed command operates line by line on a file ----


---- Replacing the first occurence of a string using 's' ----
linux is great os. unix is opensource. unix is free os.
learn operating system.
linuxlinux which one you choose.


---- Replacing the nth occurence of a string using 's/../n' n=2 ----
unix is great os. linux is opensource. unix is free os.
learn operating system.
unixlinux which one you choose.


---- Replacing all occurences of a string using 's/../g' ----
linux is great os. linux is opensource. linux is free os.
learn operating system.
linuxlinux which one you choose.


---- Replacing all occurence from the nth occurence of a string using 's/../ng' ----
unix is great os. linux is opensource. linux is free os.
learn operating system.
unixlinux which one you choose.

---- Using & to denote the matched string ----
{unix} is great os. {unix} is opensource. {unix} is free os.
learn operating system.
{unix}linux which one you choose.

unixunix is great os. unixunix is opensource. unixunix is free os.
learn operating system.
unixunixlinux which one you choose.


---- Use () to remember the matched string ----
---- We swapped the matched words ----
unix is great os. unix is opensource. unix is free os.
learn operating system.
linuxunix which one you choose.


---- Replacing a string on specific line number ----
linux is great os. linux is opensource. linux is free os.
learn operating system.
unixlinux which one you choose.


---- Replacing a string on a range of lines ----
linux is great os. linux is opensource. linux is free os.
learn operating system.
linuxlinux which one you choose.

----Multiple sed commands using -e ----
linux is great system. unix is opensource. unix is free system.
learn operating system.
linuxlinux which one you choose.


---- sed can work as grep as well as tr command ----

----sed working as grep command ----
unix is great os. unix is opensource. unix is free os.
unixlinux which one you choose.

----sed working as grep -v command ----
learn operating system.

----sed working as tr command ----
unix im great om. unix im openmource. unix im free om.
learn operating mimtem.
unixlinux which one iou choome.

'