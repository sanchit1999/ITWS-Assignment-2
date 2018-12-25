#!/bin/bash
# my code works for n less than 900
n=$1
a=$(($n%10))
b=$(($n%50))
c=$(($n%100))
d=$(($n/10))
e=$(($n/50))
f=$(($n/100))
k=$(($d%10))
if [ $f -gt 0 ] && [ $f -lt 4 ] && [ $k -ne 9 ]
then
for((i=1;i<=$f;i++))
do
echo -n C
done
fi
if [ $f -eq 4 ]
then
echo -n CD
fi
if [ $f -eq 5 ]
then
echo -n D
fi
if [ $f -gt 5 ] && [ $f -lt 9 ]
then
echo -n D
for((i=1;i<=($f%5);i++))
do
echo -n C
done
fi
k=$(($d%10))
if [ $k -eq 9 ]
then
for((i=1;i<=$f;i++))
do
if test $f -lt 4
then
echo -n C
fi
done
echo -n XC
fi
k=$(($e%2))
g=$(($d%10))
if [ $k -eq 1 ] && [ $g -ne 9 ]
then
echo -n L
fi
y=$(($d%10))
if [ $y -eq 4 ]
then
echo -n XL
fi
k=$(($d%10))
k=$(($k%5))
if [ $k -eq 1 ] || [ $k -eq 2 ] || [ $k -eq 3 ]
then
for((i=1;i<=($d%5);i++))
do
echo -n X
done
fi
if test $a -eq 9
then
echo -n IX
fi
if test $a -eq 4
then
echo -n IV
fi
if [ $a -gt 4 ] && [ $a -ne 9 ]
then
echo -n V
for((i=1;i<=$a-5;i++))
do
echo -n I
done
fi
if [ $a -lt 4 ] && [ $a -ne 0 ]
then
for((i=1;i<=$a;i++))
do
echo -n I
done
fi
echo " "
