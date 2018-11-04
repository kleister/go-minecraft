package version

import (
	"sort"

	"github.com/mcuadros/go-version"
)

// ByVersion sorts a list of Minecraft versions by ID.
type ByVersion Versions

// Sort simply sorts the versions list.
func (b ByVersion) Sort() {
	sort.Sort(b)
}

// Len is part of the sorting algorithm.
func (b ByVersion) Len() int {
	return len(b)
}

// Swap is part of the sorting algorithm.
func (b ByVersion) Swap(i, j int) {
	b[i], b[j] = b[j], b[i]
}

// Less is part of the sorting algorithm.
func (b ByVersion) Less(i, j int) bool {
	cmp := version.CompareSimple(version.Normalize(b[i].ID), version.Normalize(b[j].ID))

	if cmp == 0 {
		return b[i].ID < b[j].ID
	}

	return cmp < 0
}
