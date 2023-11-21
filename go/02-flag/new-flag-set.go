package main

import "flag"
import "fmt"

func main() {
	flagSet := flag.NewFlagSet("example", 0)

	boolValue := flagSet.Bool("bv", true, "bool value")
	intValue := flagSet.Int("iv", 99, "integer value")

	flagSet.Parse([]string{"--bv=true", "-iv=10"})

	fmt.Printf("bv = %v\n", *boolValue)
	fmt.Printf("iv = %v\n", *intValue)
}
