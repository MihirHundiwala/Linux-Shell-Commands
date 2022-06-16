#!/bin/bash/

string="$(cat sample.txt)"

n=10
echo "---- Display first n characters ----"
echo "$string" | head -c $n

n=1100
echo -e "\n\n---- Display all characters except the last n characters ----"
echo "$string" | head -c -$n

n=4
echo -e "\n\n---- Display first n lines ----"
echo "$string" | head -n $n

n=20
echo -e "\n---- Display all lines except the last n lines ----"
echo "$string" | head -n -$n

: """
Output:

---- Display first n characters ----
From faire

---- Display all characters except the last n characters ----
From fairest creatures we d

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
"""