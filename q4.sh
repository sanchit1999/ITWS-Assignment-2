#!/bin/bash
n=$(grep . $1 | wc -l) 
for((i=1;i<=$n;i++))
do
if test $i -eq 1
then
var=$(grep . $1 | head -1)
fi
if test $i -ne 1
then
var=$(grep . $1 | head -n$i | tail -1)
fi
echo -n "$i) "
echo $var
done 
