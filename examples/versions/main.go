package main

import (
	"log"

	"github.com/kleister/go-minecraft/version"
)

func main() {
	log.Println("Fetching Minecraft versions...")
	minecraft, err := version.FromDefault()

	if err != nil {
		log.Fatalln(err)
	}

	for _, version := range minecraft.Releases {
		log.Println("Minecraft v", version.ID)
	}
}
