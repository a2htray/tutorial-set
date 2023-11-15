
all: subst patsubst strip findstring filter filter_out sort word wordlist firstword lastword dir notdir suffix basename addsuffix join realpath abspath foreach file call

# subst 文本替换
subst:
	echo $(subst hello,HELLO,hello world)

# patsubst 文本模式替换
patsubst:
	echo $(patsubst %.go,%.c,foo.go bar.go)

# strip 精简文本
strip_string = abc    
strip:
	echo before strip
	echo ${strip_string}Hi
	echo after strip
	echo $(strip $(strip_string))Hi

# findstring 查找子文本
in_string = main.go
find_string = main
findstring:
ifeq ($(find_string), $(findstring $(find_string),$(in_string)))
	echo "found"
else
	echo "not found"
endif

# filter 过滤文本
filter_string = main.go utils.go main.c
filter:
	echo $(filter %.go,$(filter_string))

# filter-out 反先过滤文本
filter_out_string = main.go utils.go main.c
filter_out:
	echo $(filter-out %.go,$(filter_string))

# sort 字典排序
sort_string = c b a
sort:
	echo $(sort $(sort_string))

# word 返回特定索引上的元素，以 1 开始计数
word_string = ax bx cx
word:
	echo $(word 2,$(word_string))

# wordlist 截取指定开始和结束的文本
# 返回的文本包含结束索引上元素
wordlist_string = ax bx cx dx ex
wordlist:
	echo $(wordlist 2,4,$(wordlist_string))

# firstword 返回文本列表的第一个元素
firstword_string = a b c d
firstword:
	echo $(firstword $(firstword_string))

# lastword 返回文本列表的最后一个元素
lastword_string = a b c d
lastword:
	echo $(lastword $(lastword_string))


# dir 返回文本或文本列表的路径前缀
dir_string = /a/b/c/d.txt /e/f/g/h.txt
dir:
	echo $(dir $(dir_string))

# notdir 返回文本或文本列表的文件
notdir:
	# d.txt h.txt
	echo $(notdir $(dir_string))

# suffix 返回后缀
suffix_string = /a/b/c/d.txt /e/f/g/h.txt
suffix:
	# txt txt
	echo $(suffix $(suffix_string))


# basename 返回文件名，不带后缀
basename_string = /a/b/c/d.txt /e/f/g/h.txt xxx.go value.go.swap
basename:
	# /a/b/c/d /e/f/g/h xxx value.go
	echo $(basename $(basename_string))

# addsuffix 加后缀
addsuffix_string = a b c
go_suffix = .go
addsuffix:
	# a.go b.go c.go
	echo $(addsuffix $(go_suffix),$(addsuffix_string))


# join 逐一连接两个文本列表的元素
join_string1 = a b c
join_string2 = .go .c .java
join:
	# a.go b.c c.java
	echo $(join $(join_string1),$(join_string2))

# realpath 求绝对路径，如果是链接文件则会解析链接
realpath:
	echo $(realpath ./Makefile)

# abspath 求绝对路径，但不解析链接
abspath:
	echo $(abspath ./Makefile)

foreach_string = a.go b.c
foreach:
	echo $(foreach file,$(foreach_string),go to $(file).c)

file_string = ...\\n...\\n
log_file = ./file_function.log
file: clean_file
	$(file > $(log_file),$(file_string))
	cat $(log_file)

clean_file:
	rm -f ./file_function.log

# call 相当于模板替换，将模板字符串中的 $1 $2 $3 替换成 call 函数的传参
call_func = $1,$2,$3
call:
	echo $(call call_func,1,2,3)

