package main

import "fmt"
import "flag"
import "time"

var (
	boolValue     *bool
	intValue      *int
	int64Value    *int64
	uintValue     *uint
	stringValue   *string
	float64Value  *float64
	durationValue *time.Duration
)

func init() {
	boolValue = flag.Bool("bv", true, "bool value")
	intValue = flag.Int("iv", 10, "integer value")
	int64Value = flag.Int64("i64v", 100, "integer 64 value")
	uintValue = flag.Uint("uv", 50, "uinteger value")
	stringValue = flag.String("sv", "abc", "string value")
	float64Value = flag.Float64("fv", 9.9, "float 64 value")
	durationValue = flag.Duration("dv", 3*time.Second, "duration value")

}

func main() {
	flag.Parse()

	fmt.Printf("bv = %v\n", *boolValue)
	fmt.Printf("iv = %v\n", *intValue)
	fmt.Printf("i64v = %v\n", *int64Value)
	fmt.Printf("uv = %v\n", *uintValue)
	fmt.Printf("sv = %v\n", *stringValue)
	fmt.Printf("fv = %v\n", *float64Value)
	fmt.Printf("dv = %v\n", *durationValue)
}
