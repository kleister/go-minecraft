package version

// Filter defines filter attributes for Versions.
type Filter struct {
}

// Versions is simply a collection of Version.
type Versions []Version

// Filter reduces the list of Versions by given criteria.
func (v *Versions) Filter(filter *Filter) Versions {
	return Versions{}
}
