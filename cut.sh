sample="Hello how are you"
i=2
j=5

echo "---- Command cut with Option -c for characters ----"
echo $sample | cut -c$i		                # return ith character
echo $sample | cut -c$i-$j	                # return characters from i-j
echo $sample | cut -c$i-	                # return characters from i to end
echo $sample | cut -c-$j	                # return characters from start to j

# default --delimiter is '\t' but we need whitespace ' ' in our case 
i=2
j=3

echo "---- Command cut with Option -f for fields ----"
echo $sample | cut -d$' ' -f$i              # return ith field(word) 
echo $sample | cut -d$' ' -f$i-$j           # return fields from i to j
echo $sample | cut -d$' ' -f$i-             # return fields from i to end
echo $sample | cut -d$' ' -f-$j             # return fields from start to j

: '
Output:
---- Command cut with Option -c for characters ----
e
ello
ello how are you
Hello
---- Command cut with Option -f for fields ----
how
how are
how are you
Hello how are
'