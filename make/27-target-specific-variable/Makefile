# 声明 name 变量只在 target1 中有效
target1: name = abc

all: target1 target2

# 正常输出 abc
target1:
	echo ${name}

# 输出空字符串
target2:
	echo ${name}
