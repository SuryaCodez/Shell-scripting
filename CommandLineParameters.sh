#!/bin/sh

echo "My program name: $0"
if [ $# -lt 2 ]
then
        echo "insufficient number of arguments"
        exit 1
fi
echo "Numbers passed: $1, $2 "

sum=$(($1 + $2))

echo "Sum of entered numbers: $sum"
exit 0
