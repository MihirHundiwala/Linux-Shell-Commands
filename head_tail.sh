#!/bin/bash/

filepath='sampleTexts/head_tail.txt'

n=10
echo "---- Display first n characters ----"
head -c $n $filepath

n=1100
echo -e "\n\n---- Display all characters except the last n characters ----"
head -c -$n $filepath

n=4
echo -e "\n\n---- Display first n lines ----"
head -n $n $filepath

n=20
echo -e "\n---- Display all lines except the last n lines ----"
head -n -$n $filepath


n=10
echo -e  "\n\n---- Display last n characters ----"
tail -c $n $filepath

n=1100
echo -e "\n\n---- Display all characters from the nth character ----"
tail -c +$n $filepath

n=4
echo -e "\n\n---- Display last n lines ----"
tail -n $n $filepath

n=20
echo -e "\n\n---- Display all lines from the nth line ----"
tail -n +$n $filepath


: """
Output:

---- Display first n characters ----
From faire

---- Display all characters except the last n characters ----
From fairest creatures we 

---- Display first n lines ----
From fairest creatures we desire increase,
That thereby beauty's rose might never die,
But as the riper should by time decease,
His tender heir might bear his memory:

---- Display all lines except the last n lines ----
From fairest creatures we desire increase,
That thereby beauty's rose might never die,
But as the riper should by time decease,
His tender heir might bear his memory:
But thou contracted to thine own bright eyes,


---- Display last n characters ----
ld excuse'

---- Display all characters from the nth character ----
nt, and make my old excuse'

---- Display last n lines ----
Were an all-eating shame, and thriftless praise.
How much more praise deserved thy beauty's use,
If thou couldst answer 'This fair child of mine
Shall sum my count, and make my old excuse'

---- Display all lines from the nth line ----
Where all the treasure of thy lusty days;
To say within thine own deep sunken eyes,
Were an all-eating shame, and thriftless praise.
How much more praise deserved thy beauty's use,
If thou couldst answer 'This fair child of mine
Shall sum my count, and make my old excuse'

"""