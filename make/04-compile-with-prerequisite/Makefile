# 目标间存在前提条件
# 首先第 1 个目标默认执行，但由于定义了前提条件 compile.start
# 所以会先执行 compile.start 目标
compile: compile.start
	go build -o hello .

compile.start:
	echo "start to compile main.go"

clean:
	rm -f hello
