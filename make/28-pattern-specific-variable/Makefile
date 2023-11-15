# who 变量只有匹配到 %.hello 的 target 中有效
%.hello: who = world

all: go.hello c.hello no_hello

go.hello:
	echo hello go ${who}

c.hello:
	echo hello c ${who}

no_hello:
	echo hello ${who}
