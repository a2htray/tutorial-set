#!/bin/bash

foo=1
bar=2

print_variables () {
	# local 声明本地变量，对变量的修改不会影响外部
	local foo=3
	# 全局变量 bar 在函数内部修改后，会体现在外部的 bar
	bar=4
	echo "foo=${foo}, bar=${bar}"
}

echo "函数调用前 foo=${foo}, bar=${bar}"

print_variables

echo "函数调用后 foo=${foo}, bar=${bar}"

