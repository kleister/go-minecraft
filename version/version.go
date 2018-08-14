package version

import (
	"time"
)

// Version defines the standard version format.
type Version struct {
	ID      string    `json:"id"`
	URL     string    `json:"url"`
	Latest  bool      `json:"latest"`
	Release time.Time `json:"release"`
}
