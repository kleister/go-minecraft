package version

import (
	"github.com/json-iterator/go"
	"github.com/kleister/go-minecraft/version/internal"
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

	for _, version := range result.Versions {
		v := Version{
			ID:      version.ID,
			URL:     version.URL,
			Release: version.ReleaseTime,
		}

		switch version.Type {
		case "release":
			v.Latest = result.Latest.Release == version.ID
			r.Releases = append(r.Releases, v)
		case "snapshot":
			v.Latest = result.Latest.Snapshot == version.ID
			r.Snapshots = append(r.Snapshots, v)
		}
	}

	return nil
}
