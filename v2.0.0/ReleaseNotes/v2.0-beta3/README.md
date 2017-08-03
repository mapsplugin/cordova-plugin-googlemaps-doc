# Release notes v2.0-beta3

## Jul/31/2017

- (JS/Android/iOS) update: bug fixes and code changes for marker cluster feature is merged.
  But the marker cluster code is not merged yet.

- (JS) Safe command queue mechanism is implemented.
  This mechanism runs the `map.clear()` and some other methods as synchronously.

- (JS) Bug fix: DOM parser calculates the size of child node that is bigger size than parent node.

- (JS) Bug fix: plugin.google.maps.geometry.spherical was lost
