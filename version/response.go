package version

import (
	"github.com/json-iterator/go"
	"github.com/kleister/go-minecraft/version/internal"
	"github.com/mcuadros/go-version"
)

var (
	// OldestMinecraft defines the oldest allowed Minecraft version.
	OldestMinecraft = "1.6.4"
)

// Response is the standard root element for the version list.
type Response struct {
	Releases  Versions `json:"releases"`
	Snapshots Versions `json:"snapshots"`
}

// UnmarshalJSON implements the custom JSON unmarshaler.
func (r *Response) UnmarshalJSON(b []byte) error {
	result := internal.Root{}

	if err := jsoniter.Unmarshal(b, &result); err != nil {
		return err
	}

	for _, row := range result.Versions {
		v := Version{
			ID:      row.ID,
			URL:     row.URL,
			Release: row.ReleaseTime,
		}

		switch row.Type {
		case "release":
			if version.Compare(row.ID, OldestMinecraft, ">") {
				v.Latest = result.Latest.Release == row.ID
				r.Releases = append(r.Releases, v)
			}
		case "snapshot":
			v.Latest = result.Latest.Snapshot == row.ID
			r.Snapshots = append(r.Snapshots, v)
		}
	}

	return nil
}
