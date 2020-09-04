#!/bin/bash

while [ 1 ]
do
echo "Select the figure whose area you want to calculate: "
echo "[1] square"
echo "[2] rectangle"
echo "[3] circle"
echo "[q] Exit"

read a

case "$a" in
"1") echo "enter the length of the side a :"
read a
echo $(($a**2));;
"2") echo "enter the length of the side a and b :"
read a b
echo $(($a * $b));;
"3") echo "enter radius r :"
read r
l=$(echo "scale=2;3.14*($r*$r)" | bc)
echo $l;;
"q") exit;;
*) echo "wrong value";;
esac
done
