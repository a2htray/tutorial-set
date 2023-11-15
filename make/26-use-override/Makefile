# option 变量可以通过命令行参数的方式传递新的值，如 make option='new name'
option := name

# override 指令可以保护变量不被外部修改
override option_x = secret

target:
	echo ${option}
	echo ${option_x}
