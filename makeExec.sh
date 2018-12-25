#!/bin/bash
if test $# -ne 1
then
echo "enter exactly 1 argument"
else
if test -e $1
then
if test -f $1
then
chmod u+x $1
fi
else
echo "file does not exist"
fi 
fi
