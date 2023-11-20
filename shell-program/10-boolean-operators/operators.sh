#!/bin/bash

# -o 逻辑或
age=$1

if [ $age -lt 20 -o $age -gt 30 ]
then
	echo "$age < 20 or $age > 30"
else
	echo "20 <= $age <= 30"
fi

# -a 逻辑与
if [ $age -gt 20 -a $age -lt 30 ]
then
	echo "20 < $age < 30"
else
	echo "$age <= 20 or $age >= 30"
fi

