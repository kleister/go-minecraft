package internal

import (
	"time"
)

// Latest defines the latest versions.
type Latest struct {
	Snapshot string
	Release  string
}

// Version defines the response version.
type Version struct {
	ID          string
	Type        string
	ReleaseTime time.Time
	URL         string
}

// Root defines the root response element.
type Root struct {
	Latest   Latest
	Versions []Version
}
