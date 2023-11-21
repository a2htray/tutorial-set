package main

import "flag"
import "fmt"
import "time"

var (
	timeout *int
)

func init() {
	timeout = flag.Int("timeout", 3, "timeout (s)")
}

func main() {
	flag.Parse()

	done := make(chan bool)
	go func() {
		time.Sleep(3 * time.Second)
		done <- true
	}()

	select {
	case <-done:
		fmt.Println("task done")
	case <-time.After(time.Duration(*timeout) * time.Second):
		fmt.Println("task timeout")
	}

	close(done)
}
