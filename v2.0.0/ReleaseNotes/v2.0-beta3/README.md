# Release notes v2.0-beta3

## Sep/5/2017

- (IOS) Update: the methods of camera action execute as the sync mode

- Merge the multiple_maps branch to the master branch (version 2.0 release!)

## Sep/4/2017

- (JS/Android) Bug fix: Can not click on the overlay menu #1703

- (Andoid/iOS/JS) Bug fixL After removing marker cluster by map.clear() newly added marker cluster not bind markers click callback fn #1701

- (iOS)Update: the methods of camera action execute as the sync mode

## Sep/3/2017

- (JS) Update: Marker.isInfoWindowShown() #1699

- (JS) Bug fix: the backbutton does not work on Android

## Sep/1/2017

- (JS) Bug fix: commit #a1781ed (bug fix for #1691) affects other cases

- (JS) Update: use node.children instead of node.childNodes

- (Android) Bug fix: MarkerCluster remove() method not work and break clustering on Android #1702

- (iOS) Bug fix: Markers Sometimes Missing #1689

- (iOS) Bug fix: Info window closed after click on marker and camera move when using marker cluster on iOS #1697

## Aug/31/2017

- (iOS) Update: Cluster image quality on iOS #1679

- (JS) Update: Maker cluster freezes application when zooming to cluster with many markers to resolution = 999 #1696

## Aug/30/2017

- (Android/iOS) Bug fix: Marker INFO_CLICK event not firing when is applied on clicked marker in clusterer. #1692

- (iOS) Bug fix: setCameraZoom crashes Xcode simulator #1685

- (iOS) Bug fix: Map Not Panning To Lat Lng / Markers Sometimes Missing #1689

- (Android) Bug fix: Plugin dont add all markers with custom icons to map with latest commit #1684

- (Android) Bug fix of the commit #f8592ccff7aa110c2457bc19179639e88878004e

- (JS) Bug fix: Map not dragging/panning #1691

## Aug/29/2017

- (JS) Bug fix: `self is undefined` in LatLng class

## Aug/28/2017

- (JS) Bug fix: HTMLInfoWindow does not close when you use the @ionic-native/google-maps wrapper plugin #1680

- (Android) Bug fix: memory leak on setIcon (on Android) #1677
Bug fix: setIcon leaking memory on Android #1649

## Aug/27/2017

- (Android/iOS) Bug fix: memory leak of marker cluster feature

- (Android/iOS) Bug fix: setIcon leaking memory on Android / iOS #1649

## Aug/25/2017

- (Android/iOS) Add: [Marker cluster](https://github.com/mapsplugin/cordova-plugin-googlemaps-doc/blob/master/v2.0.0/class/MarkerCluster/README.md) is general available!

- (Android) Bug fix: getMyLocation crashes app when permission denied ([#1672](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/1672))

- (Android) Bug fix: Can not load image with file:// protocol ([#1668](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/1668))

- (iOS) Bug fix: Second Load of Map is Failing with Latest Plugin ([#1666](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/1666))

- (JS) Bug fix: Map become unresponsive with the ionic2-super-tabs ([#1664](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/1664))

## Aug/24/2017

- (Android) Bug fix: map.clear() does not work correctly ([#1639](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/1639), [#1669](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/1669))

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
