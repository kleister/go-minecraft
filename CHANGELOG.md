# Changelog for 0.2.1

The following sections list the changes for 0.2.1.

## Summary

 * Chg #4: Use standard JSON parser instead of jsoniter
 * Enh #4: Switch to go modules instead of gopkg

## Details

 * Change #4: Use standard JSON parser instead of jsoniter

   Intitially we implemented jsoniter as a JSON parser library, but in the end we decided that it's
   better to stick with the standard library JSON parser.

   https://github.com/kleister/go-minecraft/pull/4

 * Enhancement #4: Switch to go modules instead of gopkg

   As go modules have been the new standard we switched to it in favor of using gopkg.

   https://github.com/kleister/go-minecraft/pull/4


# Changelog for 0.2.0

The following sections list the changes for 0.2.0.

## Summary

 * Chg #3: Integrate the sortable interface
 * Chg #3: Integrate a version filter

## Details

 * Change #3: Integrate the sortable interface

   To get a properly sorted list of Minecraft versions we implemented the sortable interface for a
   slice of versions.

   https://github.com/kleister/go-minecraft/pull/3

 * Change #3: Integrate a version filter

   To be able to filter out specific versions we added a filtering method to a slice of Minecraft
   versions.

   https://github.com/kleister/go-minecraft/pull/3


# Changelog for 0.1.0

The following sections list the changes for 0.1.0.

## Summary

 * Chg #23: Initial release of basic version

## Details

 * Change #23: Initial release of basic version

   Just prepared an initial basic version which could be released to the public.

   https://github.com/kleister/go-minecraft/issues/23


