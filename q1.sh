#!/bin/bash
# the code gives warning message even if the disk space is equal to the limits specified as arguments
var=$(df -h | grep "/dev/sda" | wc -l)
for((i=1;i<=$var;i++))
do
if test $i -eq 1
then
var2=$(df -h | grep "/dev/sda" | tr -s " " | cut -d ' ' -f5 | cut -d '%' -f1 | head -n$i)
fi
if test $i -gt 1
then
var2=$(df -h | grep "/dev/sda" | tr -s " " | cut -d ' ' -f5 | cut -d '%' -f1 | head -n$i | tail -1)
fi
var3=$(df -h | grep "/dev/sda" | tr -s " " | cut -d ' ' -f1 | head -n$i | tail -1)
if test $var2 -gt $2
then
echo "CRITICAL, $var3, $var2%"
fi
if test $var2 -lt $1
then
echo "OK, $var3, $var2%"
fi
if test $var2 -ge $1
then 
if test $var2 -le $2
then
echo "WARNING, $var3, $var2%"
fi
fi
done
