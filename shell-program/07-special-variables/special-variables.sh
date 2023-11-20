#!/bin/bash

# 变量 $ 表示 Shell 执行的进程 ID
echo "$$ - ${$}"

# $0 表示脚本名
echo "$0"

# $n，如 $1 $2 $3 表示传递给脚本的位置参数
echo "arguments: $1 $2 $3"

# $# 表示传递给脚本的参数个数
echo "the number of the passed arguments: $#"

# $* 表示传递给脚本的参数列表，不区分各个参数，会看成一个整体
echo "the arguments are: $*"

for argument in "$*"
do
	echo "$argument"
done

# $@ 表示传递给脚本的参数列表，会区分各个参数
echo "the arguments are: $@"

for argument in "$@"
do
	echo "$argument"
done

# $? 表示上一个命令执行的退出码
echo "exit status: $?"

# $! 表示 Shell 后台最后一个进程执行的进程 ID
echo "the last backend process id: $!"

