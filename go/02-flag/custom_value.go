package main

import "fmt"
import "flag"
import "errors"

type Type string

const (
	TypePC     Type = "PC"
	TypeMobile      = "Mobile"
)

type TypeValue struct {
	value string
}

func (t *TypeValue) String() string {
	return t.value
}

func (t *TypeValue) Set(typestr string) error {
	if Type(typestr) != TypePC && Type(typestr) != TypeMobile {
		return errors.New("bad parameter")
	}
	t.value = typestr
	return nil
}

func (t *TypeValue) Get() interface{} {
	return t.value
}

func main() {
	var typ TypeValue

	flag.Var(&typ, "type", "terminal type")
	flag.Parse()

	fmt.Printf("type = %s", typ)
}
