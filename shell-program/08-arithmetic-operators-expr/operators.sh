#!/bin/bash

# +
y=`expr 1 + 2`
echo "y = 1 + 2 = $y"

# -
y=`expr 2 - 1`
echo "y = 2 - 1 = $y"

# *
y=`expr 2 \* 3`
echo "y = 2 * 3 = $y"

# /
y=`expr 6 / 2`
echo "y = 6 / 2 = $y"

# %
y=`expr 5 % 2`
echo "y = 5 % 2 = $y"

# == and !=
a=1
b=2

if [ $a == $b ]
then
	echo "equal"
else
	echo "not equal"

fi

if [ $a != $b ]
then
	echo "not equal"
else
	echo "equal"
fi
