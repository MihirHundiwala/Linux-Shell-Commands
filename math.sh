#!/bin/bash

echo -e "\n---- To do integer arithmetic in bash we need to use $(( expression )) ----"
echo $((20/10 * 8 - 6))

echo -e "\n---- Note that floating point arithmetic is not supported by bash ----"
echo -e "---- An external command has to be invoked ----"
echo $((20/3))

echo -e "\n---- Install bc library ----"
echo -e "---- Use bc to perform floating point arithmetic ----"
echo -e "---- scale has to be set for decimal points or  ----"
echo -e "---- we can pass -l to bc command which defaults to scale = 20 ----"
echo "scale=5; 20/3 - 6" | bc
echo "20/3" | bc -l

echo -e "\n---- We can also use awk ----"
awk 'BEGIN {print 20/3 - 6}'
awk 'BEGIN {printf "%.4f",20/3 - 6}'


: '
Output

---- To do integer arithmetic in bash we need to use 0 ----
10

---- Note that floating point arithmetic is not supported by bash ----
---- An external command has to be invoked ----
6

---- Install bc library ----
---- Use bc to perform floating point arithmetic ----
---- scale has to be set for decimal points or  ----
---- we can pass -l to bc command which defaults to scale = 20 ----
.66666
6.66666666666666666666

---- We can also use awk ----
0.666667
0.6667

'