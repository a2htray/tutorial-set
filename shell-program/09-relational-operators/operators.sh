#!/bin/bash

# -eq 相等
a=1
b=2

if [ $a -eq $b ]
then
	echo "equal"
else
	echo "not equal"
fi

# -ne 不相等
if [ $a -ne $b ]
then
	echo "not equal"
else
	echo "equal"
fi

# -gt 大于
if [ $a -gt $b ]
then
	echo "$a > $b"
else
	echo "$a <= $b"
fi

# -lt 小于
if [ $a -lt $b ]
then
	echo "$a < $b"
else
	echo "$a >= $b"
fi

# -ge 大于等于
if [ $a -ge $b ]
then
	echo "$a >= $b"
else
	echo "$a < $b"
fi


# -le 小于等于
if [ $a -le $b ]
then
	echo "$a <= $b"
else
	echo "$a > $b"
fi

