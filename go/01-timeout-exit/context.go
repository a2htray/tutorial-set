package main

import "flag"
import "fmt"
import "time"
import "context"

var (
	timeout *int
)

func init() {
	timeout = flag.Int("timeout", 3, "timeout (s)")
}

func main() {
	flag.Parse()

	done := make(chan bool)
	ctx, cancel := context.WithTimeout(context.Background(), time.Duration(*timeout)*time.Second)
	defer cancel()

	go func() {
		time.Sleep(3 * time.Second)
		done <- true
	}()

	select {
	case <-done:
		fmt.Println("task done")
	case <-ctx.Done():
		fmt.Println("task timeout")
	}

	close(done)
}
