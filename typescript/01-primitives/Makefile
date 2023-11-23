all: compile run

compile: $(wildcard *.ts)
	tsc $?

run:
	node primitives.js
	node number.js
	node string.js

clean: $(wildcard *.js)
	rm -f $?
