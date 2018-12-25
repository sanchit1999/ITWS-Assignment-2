#!/bin/bash
# if number of succesful searches is zero it doesn't print anything
for i in  $(ls *.txt)
do
x=$(grep $1 $i | wc -l)
if [ $x -ne 0 ]
then
echo $x lines in $i 
fi
done
