content := foo bar
export content

export content1 := bar foo

target: clean
	mkdir subdir
	echo "submake:\n\techo \$${content}\n\techo \$${content1}" > subdir/Makefile
	cd subdir; make

clean:
	rm -rf subdir
