#!/bin/sh
echo "checking if number is even or odd"
read -p "enter the number: " n
c=$(($n%2))
if [ $c -ne 0 ]
then

        echo "$n is odd"
else
        echo "$n is even"
fi
