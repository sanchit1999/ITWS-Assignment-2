#!/bin/bash
# the sorted numbers are printed in a single line separated by a space
sort=("$@")
for((i=0;i<$#;i++))
do
for((j=0;j<$#;j++))
do
if test ${sort[$j]} -ge ${sort[$i]}
then
temp=${sort[$j]}
sort[$j]=${sort[$i]}
sort[$i]=$temp
fi 
done
done
for((i=0;i<$#;i++))
do
echo -n ${sort[$i]}
echo -n " "
done
