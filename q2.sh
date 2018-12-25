#!/bin/bash
a=$(find ./* -type d | wc -l)
for((i=0;i<a;i++))
do
w=$(find ./* -type d | head -n$((i+1)) | tail -1)
x=$(find $w -type f | wc -l)
q=$(echo $w | cut -d '/' -f2)
name1[$i]=$q
name[$i]=$q
size[$i]=$x
done
for((i=0;i<a;i++))
do
for((j=$((i+1));j<a;j++))
do
if test ${size[$j]} -ge ${size[$i]}
then
temp=${size[$j]}
size[$j]=${size[$i]}
size[$i]=$temp
temp1=${name[$j]}
name[$j]=${name[$i]}
name[$i]=$temp1
fi
done
done
for((i=0;i<a;i++))
do
echo "${name[$i]}		${size[$i]} files"
done
for((i=0;i<a;i++))
do
w=$(find ./* -type d | head -n$((i+1)) | tail -1)
x=$(find $w -type f | wc -l)
y=$(find $w -type f | head -n$((i+1)) | tail -1)
sum[$i]=0
sum=0
for((j=0;j<$x;j++))
do
z=$(find $w -type f | head -n$((j+1)) | tail -1)
e=$(wc -w < $z)
#p=${sum[$i]}
sum=$((sum+e))
sum[$i]=$sum
done
done
echo " "
for((i=0;i<a;i++))
do
echo "${name1[$i]} 	 ${sum[$i]} K"
done
