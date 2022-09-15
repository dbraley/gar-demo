package main

import (
	"fmt"

	"github.com/dbraley/gar-demo/foo"
	"github.com/dbraley/gar-demo/foo/baz"
)

func main() {
	fmt.Println(foo.HelloWorld)
	fmt.Println(baz.LoremIpsum)
}
