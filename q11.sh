#!/bin/bash
for((i=1;i<=10;i++))
do
echo $((i*i))
done
for((i=1;i<=10;i++))
do
prod=1
for((j=1;j<=i;j++))
do
prod=$((prod*i))
done
echo $prod
done
a=1
b=1
echo $a
echo $b
for((i=1;i<=100;i++))
do
c=$((a+b))
a=$b
b=$c
if test $c -le 100
then
v=$((c%2))
if test $v -eq 1
then
echo $c
fi
fi
done
