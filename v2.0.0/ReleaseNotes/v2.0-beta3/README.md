# Release notes v2.0-beta3

## Aug/23/2017

- (Android/iOS) Add: trigger the plugin_touch event when you tap on marker (in order to detect the dialog something)

- (JS)Update: Allow the `backbutton` event to another code [#1639](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/1639)

## Aug/20/2017

- (JS)Update: map.getVisibleRegion() return VisibleRegion class, which is extended class from LatLngBounds, but it does not have the `extends()` and the `getCenter()` methods.
  This is only internal uses.

## Aug/18/2017

- (Android)Add: stop the resize timer completely if there is no map. This reduces the battery usage.

## Aug/17/2017

Bug fix: [UIImageCache removeAllCachedImages]: unrecognized selector sent [#1648](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/1648)

## Aug/16/2017

- (Android) Remove: AsyncLicenseInfo.java [#1646](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/1646)

## Aug/15/2017

- (JS) Bug fix: Fixed viewport-fit to only be added for iOS 11+ devices[#1637](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/1637)

## Aug/10/2017

- (JS/iOS) Bug fix: icon image is not displayed, and map is not displayed after coming back to the map page [#1614](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/1614)

- (JS) Merge: Fixes iOS 11 white statusbar issue in Cordova [#1630](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/1630)


## Aug/8/2017

- (JS) Update: Stop creating closures when you execute `on()` every time.

- (JS) Accept promise / subscribe especially for @ionic-native/google-maps plugin

## Aug/7/2017

- (Android) Bug fix: Custom dimensions of markers data uri icon should work. [#1622](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/1622)

- (JS) Bug fix: the plugin can't recognize correctly if the css for <body> specifies width=0 and height = 0

- (JS/Android/iOS) Update: stop resize timer when the DOM parse timer is stopping (This reduces the battery usage)

- (iOS) Bug fix: the plugin does not use the marker.hash, but still remains some code [#1626](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/1626)

- (JS) Bug fix: the calculation of clickable region is incorrect if the map div overflows the parent dimension

- (JS) Bug fix: The calculation of DOM clickable dimension ignores the overflow css property


## Aug/6/2017

- (JS) Update: can not build the plugin with --browserify option [#1616](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/1616)

- (JS) Bug fix: prevent undefined error of LatLng/LatLngBounds class

## Aug/5/2017

- (JS) Merge: refactor(BaseClass): reduces amount of created objects/functions [#1613](https://github.com/mapsplugin/cordova-plugin-googlemaps/pull/1613)
  This improves the performance significantly.

## Aug/4/2017

- (JS) Bug fix: Application wait forever when you remove the map on Android

- (JS) Add: insert small delay when the code executes map.getMap() multiple times in very short period.
  (Prevent crash of out of memory on Android)

- (JS) Add: The plugin catches the backbutton event to prevent crashes when you quit the map page during the code is still running.

- (JS) Update: Optimize resizeMap() method execution.

- (JS) Bug fix: can not move out using the android back button during map.animateCamera()


## Aug/3/2017

- (JS) Bug fix: Dom size parse error

- (JS) Bug fix: null pointer error when map.clear() method is executing

## Aug/2/2017

- (JS) Add: Implement internal command queue mechanism.

## Jul/31/2017

- (JS/Android/iOS) update: bug fixes and code changes for marker cluster feature is merged.
  But the marker cluster code is not merged yet.

- (JS) Safe command queue mechanism is implemented.
  This mechanism runs the `map.clear()` and some other methods as synchronously.

- (JS) Bug fix: DOM parser calculates the size of child node that is bigger size than parent node.

- (JS) Bug fix: plugin.google.maps.geometry.spherical was lost

You can see [the release notes for v2.0-beta2 from here](https://github.com/mapsplugin/cordova-plugin-googlemaps-doc/blob/master/v2.0.0/ReleaseNotes/v2.0-beta2/README.md)
