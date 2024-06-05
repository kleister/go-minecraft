# Changelog

## [1.0.0](https://github.com/kleister/go-minecraft/compare/v0.2.1...v1.0.0) (2024-06-05)


### Features

* apply new repo structure and integrate automated releases ([94673a1](https://github.com/kleister/go-minecraft/commit/94673a1585cc1d7b6b3931b980933f092f034d19))
* **major:** update actions/setup-go action to v4 ([#29](https://github.com/kleister/go-minecraft/issues/29)) ([a07b367](https://github.com/kleister/go-minecraft/commit/a07b367471a36cda5ab130ef2a21782e0601f9c3))


## [0.2.1]() (2020-12-13)

The following sections list the changes for 0.2.1.

### Summary

 * Chg #4: Use standard JSON parser instead of jsoniter
 * Enh #4: Switch to go modules instead of gopkg

### Details

 * Change #4: Use standard JSON parser instead of jsoniter

   Intitially we implemented jsoniter as a JSON parser library, but in the end we decided that it's
   better to stick with the standard library JSON parser.

   https://github.com/kleister/go-minecraft/pull/4

 * Enhancement #4: Switch to go modules instead of gopkg

   As go modules have been the new standard we switched to it in favor of using gopkg.

   https://github.com/kleister/go-minecraft/pull/4


## [0.2.0]() (2020-12-13)

The following sections list the changes for 0.2.0.

### Summary

 * Chg #3: Integrate the sortable interface
 * Chg #3: Integrate a version filter

### Details

 * Change #3: Integrate the sortable interface

   To get a properly sorted list of Minecraft versions we implemented the sortable interface for a
   slice of versions.

   https://github.com/kleister/go-minecraft/pull/3

 * Change #3: Integrate a version filter

   To be able to filter out specific versions we added a filtering method to a slice of Minecraft
   versions.

   https://github.com/kleister/go-minecraft/pull/3


## [0.1.0]() (2020-12-13)

The following sections list the changes for 0.1.0.

### Summary

 * Chg #23: Initial release of basic version

### Details

 * Change #23: Initial release of basic version

   Just prepared an initial basic version which could be released to the public.

   https://github.com/kleister/go-minecraft/issues/23
