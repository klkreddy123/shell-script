#!/bin/bash

# Adding 2 numbers to get sum

NUMBER1=2
NUMBER2=4

SUM=$((NUMBER1+NUMBER2))

echo " sum is: $SUM"

echo "******************************************"

NUMBER1=$1
NUMBER2=$2
echo " entered number is $NUMBER1 "
echo " entered number is $NUMBER2 "

SUM=$((NUMBER1+NUMBER2))

echo " sum is: $SUM"
