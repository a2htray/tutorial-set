objects := foo.o bar.o all.o

all: $(objects)


# 可以理解成通配符的模式匹配
# 下方的 % 分别匹配到 foo、bar、all，所以会被解释成
# foo.o: foo.c
# bar.o: bar.c
# all.o: all.c
$(objects): %.o: %.c

all.c:
	echo "int main() { return 0; }" > all.c

# 上方的三个目标规则中的前提会匹配这个目标
%.c:
	touch $@

clean:
	rm -f *.c *.o all
