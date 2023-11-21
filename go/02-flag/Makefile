run: fmt build
	./flag-basic --bv=false --iv=99 --i64v=100 --uv=8 --sv="this is a test." --fv=99.9 --dv=20s
	./flag-basic -bv=true -iv=999 -i64v=1000 -uv=80 -sv="this is a test." -fv=99.99 -dv=200s
	
	./new-flag-set

	./custom-value --type=PC

	./custom-value --type=badTerminal && echo $?

build:
	go build -o flag-basic flag-basic.go
	go build -o new-flag-set new-flag-set.go
	go build -o custom-value custom-value.go

fmt:
	gofmt -w -l flag-basic.go
	gofmt -w -l new-flag-set.go
	gofmt -w -l custom-value.go

clean:
	rm -f flag-basic
	rm -f new-flag-set
	rm -f custom-value
