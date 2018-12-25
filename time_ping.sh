#!/bin/bash
# i used colour codes of different colours to print the words in these colours and stored these in an array
color[0]='\033[0;32m'
color[1]='\033[0;31m'
color[2]='\033[0;33m'
color[3]='\033[0;34m'
color[4]='\033[1;37m'
color[5]='\033[1;33m'
color[6]='\033[1;34m'
color[7]='\033[0;36m'
i=0
ping -c $1 www.google.com |
while read var;
do
j=$((i%8))
echo -e " ${color[$j]} $(date) -- $var"
i=$((i+1))
done
