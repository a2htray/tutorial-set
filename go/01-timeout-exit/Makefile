
run-timeout: fmt
	go build -o time-after time-after.go
	echo "会超时"
	./time-after --timeout 2
	echo "不会超时"
	./time-after --timeout 5

	go build -o context context.go
	echo "会超时"
	./context --timeout 2
	echo "不会超时"
	./context --timeout 5
	

fmt:
	gofmt -w -l time-after.go
	gofmt -w -l context.go

clean:
	rm -f time-after
	rm -f context
