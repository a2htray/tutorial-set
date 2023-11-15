objects := foo.o bar.o all.o

all: $(objects)

# foo.o: foo.c
# bar.o: bar.c
# all.o: all.c

# static pattern rule
$(objects): %.o: %.c

all.c:
	echo "int main() { return 0; }" > all.c

%.c:
	touch $@

clean:
	rm -f *.c *.o all
