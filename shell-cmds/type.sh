#!/bin/bash

# type 显示给定命令是如何被解释的
# 格式 type [OPTIONS] FILE_NAME...

echo "run: type wc"
type wc

echo "run: type wc sleep head"
type wc sleep head

# 选项 -t 显示命令的类型
# 命令的类型包括：
# 1. function - Shell 函数
# 2. builtin - Shell 内置命令
# 3. file - 磁盘文件
# 4. keyword - 保留关键字 
echo "4 种命令类型"
type -t echo
myfunc () {
	echo "myfunc"
}
type -t myfunc
type -t id
type -t for

# 选项 -a 显示所有匹配的
echo "run: type -a id"
type -a id


