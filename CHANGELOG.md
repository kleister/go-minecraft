# Changelog

## [1.4.0](https://github.com/kleister/go-minecraft/compare/v1.3.0...v1.4.0) (2025-06-30)


### Features

* **deps:** update module github.com/golangci/golangci-lint/v2 to v2.2.0 ([#67](https://github.com/kleister/go-minecraft/issues/67)) ([fbc9249](https://github.com/kleister/go-minecraft/commit/fbc92499eda67c761c96f9edf87a82b3d1b632c8))


### Bugfixes

* **deps:** update module github.com/golangci/golangci-lint/v2 to v2.2.1 ([#68](https://github.com/kleister/go-minecraft/issues/68)) ([4659b43](https://github.com/kleister/go-minecraft/commit/4659b4397a9b61e6331f2da9259126718570c81c))

## [1.3.0](https://github.com/kleister/go-minecraft/compare/v1.2.2...v1.3.0) (2025-06-02)


### Features

* **deps:** update module github.com/mgechev/revive to v1.10.0 ([#65](https://github.com/kleister/go-minecraft/issues/65)) ([550a241](https://github.com/kleister/go-minecraft/commit/550a241b05435a883567a279cb72903ca34cf01b))

## [1.2.2](https://github.com/kleister/go-minecraft/compare/v1.2.1...v1.2.2) (2025-05-05)


### Bugfixes

* **deps:** update module github.com/golangci/golangci-lint/v2 to v2.1.6 ([#64](https://github.com/kleister/go-minecraft/issues/64)) ([232b102](https://github.com/kleister/go-minecraft/commit/232b10203a952b9afdeadc1dee10d98071c49fd1))

## [1.2.1](https://github.com/kleister/go-minecraft/compare/v1.2.0...v1.2.1) (2025-04-28)


### Bugfixes

* **deps:** update module github.com/golangci/golangci-lint/v2 to v2.1.4 ([#63](https://github.com/kleister/go-minecraft/issues/63)) ([201a197](https://github.com/kleister/go-minecraft/commit/201a197c27a98f6366ae108587fa95173dc302fa))

## [1.2.0](https://github.com/kleister/go-minecraft/compare/v1.1.0...v1.2.0) (2025-04-21)


### Features

* **deps:** update module github.com/golangci/golangci-lint/v2 to v2.1.1 ([#61](https://github.com/kleister/go-minecraft/issues/61)) ([8d4637f](https://github.com/kleister/go-minecraft/commit/8d4637f898d943987839b6f43cc756caa574c127))
* **deps:** update module github.com/mgechev/revive to v1.9.0 ([#59](https://github.com/kleister/go-minecraft/issues/59)) ([d55df32](https://github.com/kleister/go-minecraft/commit/d55df326950964f25125c84f29b0b28d638649d0))


### Bugfixes

* **deps:** update module github.com/golangci/golangci-lint/v2 to v2.1.2 ([#62](https://github.com/kleister/go-minecraft/issues/62)) ([c0b46f9](https://github.com/kleister/go-minecraft/commit/c0b46f9de7f2e8a372bdf102196cc072ca243630))

## [1.1.0](https://github.com/kleister/go-minecraft/compare/v1.0.0...v1.1.0) (2025-04-14)


### Features

* upgrade revive and golangci-lint and make lint happy ([1f96d6a](https://github.com/kleister/go-minecraft/commit/1f96d6a8be6b57339d16caedf0f3219cc8789871))

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
