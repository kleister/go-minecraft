package main

import (
	"fmt"
	"os"

	"github.com/kleister/go-minecraft/version"
)

func main() {
	fmt.Println("Fetching Minecraft versions...")
	minecraft, err := version.FromDefault()

	if err != nil {
		fmt.Println("Error:", err)
		os.Exit(1)
	}

	f := &version.Filter{
		Version: ">=1.10.0,<1.13",
	}

	for _, version := range minecraft.Releases.Filter(f) {
		fmt.Println(version.ID)
	}
}
