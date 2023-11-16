#!/bin/bash

: '
Shell 函数的 4 种格式

格式 1
function_name () {
	commands
}

格式 2
function_name () { commands; }
格式 3
function function_name {
	commands
}
格式 4
function function_name { commands; }
'

# 格式 1
func1 () {
	echo "func1 ..."
}

func1

# 格式 2
func2 () { echo "func2 ..."; }
func2

# 格式 3
function func3 {
	echo "func3 ..."
}
func3

# 格式 4
function func4 { echo "func4 ..."; }
func4

# ====== 传参和返回值 ======

# 函数的传参用 $1、$2、$3、...、$n 接收
hello () {
	echo "hello $1"
}
# 比较好的做法是用双引号将参数包起来，这样可以避免由于空格所造成的一些问题
# 如 hello C C++ Java Go
hello "C C++ Java Go"

# 返回值 1
return_value_func1 () {
	# return 返回的只能数字
	# 用于表示函数执行成功（0）或失败（非 0）
	return 12
}
return_value_func1
echo $?

# 返回值 2
return_value_func2 () {
	# echo 的输出作为函数的返回值
	echo "return value 2"
}
# $() 执行函数并返回
echo $(return_value_func2)


# 同时接收参数和返回值
hello2 () {
	echo "hello $1"
}
echo $(hello2 "a2htray")



