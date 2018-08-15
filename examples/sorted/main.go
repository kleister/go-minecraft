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

	version.ByVersion(minecraft.Releases).Sort()

	for _, version := range minecraft.Releases {
		fmt.Println(version.ID)
	}
}
