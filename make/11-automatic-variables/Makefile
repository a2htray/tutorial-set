# $@ 表示目标名
# $? 表示比当前目标要新的前提文本列表
# $^ 表示当前目标的所有前提文本列表
target1: prerequisite1 prerequisite2
	# target name
	echo $@
	# prerequisites newer than the target
	echo $?
	# all prerequisites  
	echo $^


prerequisite1:
	echo "prerequisite1"

prerequisite2:
	echo "prerequisite2"
