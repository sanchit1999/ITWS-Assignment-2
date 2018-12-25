#!/bin/bash
# i took bdate in format yyyy-mm-dd and name and bdate are separated by a space
read name bdate
d=$(date +%F | cut -d '-' -f3)
e=$(echo $bdate | cut -d '-' -f3)
f=$(date +%F | cut -d '-' -f1)
k=$(echo $bdate | cut -d '-' -f1)
if test $e -eq $d
then
echo "Happy Birthday $name. You are $((f-k)) years old today"
fi  
