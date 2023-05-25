package main

import (
	"fmt"
	"os"
)

func main() {
	// Get the value of the environment variable
	myVariable := os.Getenv("MY_VARIABLE")

	// Check if the variable is set
	if myVariable == "" {
		fmt.Println("MY_VARIABLE is not set.")
	} else {
		fmt.Println("MY_VARIABLE:", myVariable)
	}
}
