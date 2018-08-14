package version

import (
	"io/ioutil"
	"net/http"

	"github.com/json-iterator/go"
	"github.com/pkg/errors"
)

const (
	// DefaultURL defines the default Minecraft version URL.
	DefaultURL = "https://launchermeta.mojang.com/mc/game/version_manifest.json"
)

// FromString parses a version definition from string.
func FromString(content []byte) (Response, error) {
	result := Response{}

	if err := jsoniter.Unmarshal(content, &result); err != nil {
		return Response{}, errors.Wrap(err, "failed to parse versions")
	}

	return result, nil
}

// FromURL parses a version definition from URL.
func FromURL(path string) (Response, error) {
	resp, err := http.Get(path)

	if err != nil {
		return Response{}, errors.Wrap(err, "failed to fetch versions")
	}

	defer resp.Body.Close()

	body, err := ioutil.ReadAll(resp.Body)

	if err != nil {
		return Response{}, errors.Wrap(err, "failed to read versions")
	}

	return FromString(body)
}

// FromPath parses a version definition from file path.
func FromPath(path string) (Response, error) {
	body, err := ioutil.ReadFile(path)

	if err != nil {
		return Response{}, errors.Wrap(err, "failed to read versions")
	}

	return FromString(body)
}

// FromDefault is a simply wrapper that loads the default URL.
func FromDefault() (Response, error) {
	return FromURL(DefaultURL)
}
