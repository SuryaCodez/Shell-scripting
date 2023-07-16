#!/bin/sh
read -p "enter the number:" z
while [ $z -lt 10 ]
do
        echo " $z "
        z=$(($z+1))
done

read -p "enter number:" i
while [ $i -ge 10 ]
do
        echo " $i "
        i=$(($i-1))
done
