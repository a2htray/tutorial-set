CFLAGS = -g

blah: blah.o

blah.c:
	echo "int main() { return 0; }" > blah.c

print-implicit-rules:
	echo "Variable CC = "${CC}
	echo "Variable CXX = "${CXX}
	echo "Variable CFLAGS = "${CFLAGS}
	echo "Variable CXXFLAGS = "${CXXFLAGS}
	echo "Variable CPPFLAGS = "${CPPFLAGS}
	echo "Variable LDFLAGS = "${LDFLAGS}
	echo "================================"

clean:
	rm -f blah*
