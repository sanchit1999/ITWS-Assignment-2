#!/bin/bash
arr=("$@")
for((i=0;i<$#;i++))
do
if test -f ${arr[$i]}
then
if test -e ${arr[$i]}
then
ls -l ${arr[$i]}
fi
fi
done
