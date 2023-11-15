all: ls-go ls-c

# wildcard 定义通配符，匹配所有后缀为 .go 的文件
# $? 表示当前目标的前提文本列表
ls-go: $(wildcard *.go)
	ls -al $?
	echo $?

ls-c: $(wildcard *.c)
	ls -al $?
