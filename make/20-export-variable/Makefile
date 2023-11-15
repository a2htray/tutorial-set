# export 可以把定义的变量传递到内部的 Makefile 文件中

# 在 Makefile 中定义可导出的 content
content := foo bar
export content

# 在 Makefile 中定义可导出的 content1
export content1 := bar foo

# 命令行新建了 subdir/Makefile，该 Makefile 有对上述两个变量的使用
# 由于定义了 export 可导出，所以 subdir/Makefile 可以使用上述两个变量
target: clean
	mkdir subdir
	echo "submake:\n\techo \$${content}\n\techo \$${content1}" > subdir/Makefile
	cd subdir; make

clean:
	rm -rf subdir
