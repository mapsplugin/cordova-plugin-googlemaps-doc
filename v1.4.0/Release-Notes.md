I will update this change log with each new release of the phonegap-googlemaps-plugin.
The change log will list releases by date and will include any new features and bug fixes.

## v.1.3.6 | 07/12/2015

- Fixed some small bugs
- Updated Google Maps SDK for iOS to 1.11.0
 - Will fix some bugs on iOS 9
 - with BITCODE support
 - fixed blank map problems

## v.1.3.4 | 10/15/2015

- Updated Google Maps SDK for iOS to 1.10.4
 - Will fix some bugs on iOS 9

## v.1.3.3

**Added**

- added zIndex (iOS only, not available for Android)
 - [659](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/659)

```js
map.addMarker({
    zIndex: int
})
// and
marker.setZIndex()
```

**Fixed**
- Status-Bar Shift-Down
 - [657](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/657#issuecomment-146036169)
- Temp Dom-not-updated fix
 - [658](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/658)
- Stabilized iOS loading
 - [623](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/623)

## v.1.3.2
- Updated Google Maps SDK to 1.10.3 - should avoid plist problems on Xcode 7 now

## v.1.3.1
- Fixed #630 (no google-volley dependencies anymore, increase start-up speed)
- Better URL Support on iOS for KML and GroundOverlay (support for any valid NSURL resource)
- Changed all http calls to https
- Updated Google Maps iOS SDK to 1.10.2

**INFORMATION**

In order to install the new version, you have to:

1) Delete plugin
> cordova plugin rm plugin.google.maps

2) Delete Google Maps iOS SDK
> cordova plugin rm com.googlemaps.ios

3) Delete plugin.http.request
> cordova plugin rm plugin.http.request

3) Re-Install plugin from master (follow wiki for Mac/Linux/Windows)
> cordova plugin add https://github.com/mapsplugin/cordova-plugin-googlemaps --variable API_KEY_FOR_ANDROID="YOUR_KEY" --variable API_KEY_FOR_IOS="YOUR_KEY"

If you have some weird compiling errors, you're probably missing some linked frameworks. Set the Target Membership
https://www.youtube.com/watch?v=gr0QrEShPbQ
or just delete your iOS platform and re-install.

Required XCode Version is 6.3+ (due to ABI changes)
The minimum target iOS version for Google Maps SDK for iOS is now 7.0. Version 6.0 is no longer supported.
This release requires the following additional dependencies in your project: Accelerate.framework, CoreBluetooth.framework, CoreGraphics.framework, Security.framework

This will be set automatically when you install with CLI.

BITCODE isn't supported currently. Google Maps hasn't update now. Just disable Bitcode in XCode 7 when you get compile errors.

## v.1.2.9

**Add:**

- Implement maxWidth for Marker InfoWindow https://github.com/mapsplugin/cordova-plugin-googlemaps/pull/503

## v.1.2.8

**Fixes**

- Support for cordova-android 4.x (Cordova 5.x) -> many thanks to @wolf-s
- Fixed bug with base64 icons, icons from file
- Fixed https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/591
- Fixed play-service dependency https://github.com/mapsplugin/cordova-plugin-googlemaps/pull/567
- Fixed plugin init on new cordova-android version
- Compatibility with https://github.com/crosswalk-project/cordova-plugin-crosswalk-webview (have a look at the wiki and the issues)
- Fixed https://github.com/mapsplugin/cordova-plugin-googlemaps/pull/551
- Fixed crash on android when marker is not available https://github.com/mapsplugin/cordova-plugin-googlemaps/pull/529
- Fixed .off() listener bug https://github.com/mapsplugin/cordova-plugin-googlemaps/pull/517

**Added**

- pass "params" to marker and retrieve with marker.getParams() https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/54

## v.1.2.7
- Support for cordova-android 4.x (Cordova 5.x) -> many thanks to @wolf-s

## v1.2.5
- Add : The `opacity` and `tileSize` properties has been added to `map.addTileOverlay()`
- Add : Add marker animations: `DROP` and `BOUNCE`
- Add : Add INDOOR_BUILDING_FOCUSED & INDOOR_LEVEL_ACTIVATED events for indoor map events.
- Add plugin.google.maps.geometry.encoding.decodePath() & plugin.google.maps.geometry.encoding.encodePath()
- Update : v1.2.5 uses Google Play Services version 23.
- Added settings for watchdogtimer / complete rewrite of remote marker downloads
- The `icon` property of the `map.addMarker()` accepts `file://` & `cdvfile://` protocol, and also the absolute file path.
- Loading KML files from `file://` & `cdvfile://` protocol.
- And many bugs are fixed.

## Version 1.3.1 - 09/21/2015

- Fixed #630 (no google-volley dependencies anymore, increase start-up speed)
- Better URL Support on iOS for KML and GroundOverlay (support for any valid NSURL resource)
- Changed all http class to https
- Updated Google Maps iOS SDK to 1.10.2

**INFORMATION**

In order to install the new version, you have to:

1) Delete plugin
> cordova plugin rm plugin.google.maps

2) Delete Google Maps iOS SDK
> cordova plugin rm com.googlemaps.ios

3) Re-Install plugin from master (follow wiki for Mac/Linux/Windows)
> cordova plugin add https://github.com/mapsplugin/cordova-plugin-googlemaps --variable API_KEY_FOR_ANDROID="YOUR_KEY" --variable API_KEY_FOR_IOS="YOUR_KEY"

If you have some weird compiling errors, you're probably missing some linked frameworks. Set the Target Membership
https://www.youtube.com/watch?v=gr0QrEShPbQ
or just delete your iOS platform and re-install.

Required XCode Version is 6.3+ (due to ABI changes)
The minimum target iOS version for Google Maps SDK for iOS is now 7.0. Version 6.0 is no longer supported.
This release requires the following additional dependencies in your project: Accelerate.framework, CoreBluetooth.framework, CoreGraphics.framework, Security.framework

This will be set automatically when you install with CLI.

BITCODE isn't supported currently. Google Maps hasn't update now. Just disable Bitcode in XCode 7 when you get compile errors.

## Version 1.2.9 - Sep 2015

**Add:**

- Implement maxWidth for Marker InfoWindow https://github.com/mapsplugin/cordova-plugin-googlemaps/pull/503


## Version 1.2.8 - Sep 2015

**Fixes**

- Support for cordova-android 4.x (Cordova 5.x) -> many thanks to @wolf-s
- Fixed bug with base64 icons, icons from file
- Fixed https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/591
- Fixed play-service dependency https://github.com/mapsplugin/cordova-plugin-googlemaps/pull/567
- Fixed plugin init on new cordova-android version
- Compatibility with https://github.com/crosswalk-project/cordova-plugin-crosswalk-webview (have a look at the wiki and the issues)
- Fixed https://github.com/mapsplugin/cordova-plugin-googlemaps/pull/551
- Fixed crash on android when marker is not available https://github.com/mapsplugin/cordova-plugin-googlemaps/pull/529
- Fixed .off() listener bug https://github.com/mapsplugin/cordova-plugin-googlemaps/pull/517

**Added**

- pass "params" to marker and retrieve with marker.getParams() https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/54

## Version 1.2.7 - Aug 2015
- Support for cordova-android 4.x (Cordova 5.x) -> many thanks to @wolf-s

## Version 1.2.5 - Mar 2015
https://github.com/mapsplugin/cordova-plugin-googlemaps/issues?q=milestone%3Av1.2.5+is%3Aclosed
* Add : [#191](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/191) The `opacity` and `tileSize` properties has been added to `map.addTileOverlay()`
* Update : [#196](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/196) The `icon` property of `map.addMarker()` accepts color strings, such as `red` or `#ccff33`
* Add : [#208](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/208) Add marker animations: `DROP` and `BOUNCE`
* Add : [#219](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/219) & [#442](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/219) Add `INDOOR_BUILDING_FOCUSED` & `INDOOR_LEVEL_ACTIVATED` events for indoor map events.
* Bug fix : [#291](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/291) Launch External Navigation Issue : Problem with URLdecoded origin and destination
* Bug fix : [#297](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/297) Google Map not getting close in android
* Bug fix : [#303](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/303) Plugin forces splashscreen hiding
* Bug fix : [#309](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/309) map.getMyLocation() method result with success AND error callback
* Bug fix : [#311](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/311) [#327](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/327) [#348](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/348) [#350](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/350) The remove function doesn't work properly
* Bug fix : [#312](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/312) Small bug in Cordova 3.7.0
* Bug fix : [#313](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/313) Add option for custom watchDog timer interval
* Add : [#317](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/317) Add `plugin.google.maps.geometry.encoding.decodePath()` & `plugin.google.maps.geometry.encoding.encodePath()`
* Update : v1.2.5 uses Google Play Services version 23.
* Bug fix : [#337](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/337) Urgent: map stop working with many remote markers in iOS
* Bug fix : [#345](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/345) LocationClient cannot be resolved error
* Bug fix : [#358](https://github.com/mapsplugin/cordova-plugin-googlemaps/pull/358) prevent multiple class names / smarter add/remove methods
* Add : [#367](https://github.com/mapsplugin/cordova-plugin-googlemaps/pull/367): Added settings for watchdogtimer / complete rewrite of remote marker downloads
* Add : [#368](https://github.com/mapsplugin/cordova-plugin-googlemaps/pull/368): The `icon` property of the `map.addMarker()` accepts `file://` & `cdvfile://` protocol, and also the absolute file path.
* Bug fix : [#386](https://github.com/mapsplugin/cordova-plugin-googlemaps/pull/386) `getLicenseInfo() not working before initializing the map
* Bug fix : [#390](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/390) can't pass float value for zoom
* Bug fix : [#399](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/399) marker.setIcon (*base64Image*) crashes ios version
* Bug fix : [#403](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/403) Map markers don't display for some icons
* Add : [#405](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/405) Loading KML files from file://` & `cdvfile://` protocol.
* Bug fix: [#413](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/413) Temporary scrollbar on map
* Bug fix: [#414](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/414) Inconsistent KML parsing on Android and iOS
* Bug fix: [#418](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/418) Weird crash on addGroundOverlay
* Bug fix: [#425](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/425) launchNavigation on iOS
* Bug fix: [#432](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/432) Change the map container
* Bug fix: [#434](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/434) getmap initialization issue
* Bug fix: [#437](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/437) map.getMyLocation() issue on iPhone 4 and maybe others
* Bug fix: [#440](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/440) iOS bug when keyboard opened with an input on the bottom of the map
* Update: [#451](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/451) Suppress debug log outputs
* Bug fix: [#452](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/452) We still facing deprecation warnings

## Version 1.2.4 - Oct 2014
https://github.com/mapsplugin/cordova-plugin-googlemaps/issues?q=milestone%3Av1.2.4+is%3Aclosed

## Version 1.2.3 - Oct 2014
https://github.com/mapsplugin/cordova-plugin-googlemaps/issues?q=milestone%3Av1.2.3+is%3Aclosed

## Version 1.2.2 - Oct 2014
https://github.com/mapsplugin/cordova-plugin-googlemaps/issues?q=milestone%3Av1.2.2

## Version 1.2.1 - Sep 2014
* Add : [map.setDebuggable()](./Map#mapsetdebuggable) to confirm the touchable regions
* Bug fix: touchable regions are wrong.

## Version 1.2.0 - Sep 2014
* Add : [HTML on the map](./Map#put-html-elements-on-the-map)
* Add [#178](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/178): Passing Custom Variables to a Marker?
* Add [#174](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/174): `marker.setDisableAutoPan()`, and [disableAutoPan](./Marker#disable-auto-pan) option for map.addMarker()
* Add : [map.setClickable()](./Map#mapsetclickable)
* Add : `map.fromLatLngToPoint()` and `map.fromPointToLatLng()`
* Add : [map.setBackgroundColor()](./Map.setBackgroundColor()), and `backgroundColor` option for [map.getMap()](./Map.getMap()) and [map.setOptions()](./Map.setOptions())
* Add : `enableHighAccuracy` option for [map.getMyLocation()](./Map.getMyLocation()) to attempt to get your location with highest accuracy.
* Change [#158](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/158): Replace LocationClient with FusedLocationProviderApi
* Add : [map.setPadding()](./Map.setPadding()) to define a visible region on the map.
* Bug fix: [LatLngBounds](./LatLngBounds).getCenter() returns wrong coordinates when the bounds contain the international date line.
* Bug fix: [map.getLicenseInfo()](./Map.getLicenseInfo()) returns always null
* Bug fix: [map.clear()](./Map) not working
* Add: [BaseClass](./BaseClass).empty() method.
* Bug fix: HTML Color is not the same with webView
* Bug fix: `Reachability` occurs a build error (iOS)


## Version 1.1.5 - Aug 2014
* Add [#169](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/169): Add `map.remove()` method to destroy the map completely.
* Bug fix [#175](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/175): ios - No network crash

## Version 1.1.4 - Aug 2014
* Add [#113](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/113): Error Handler for GPS "Cannot Detect Location" error
* Add [#123](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/123): Add in ability to click on polygons #123
* Add [#124](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/124): Add in ability to click on polygons, circles and ground overlays
* Bug fix [#133](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/133): Map.clear() does not remove the event listener
* Improve [#135](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/135): Revert style of new info window to old style (with image)
* Bug fix [#136](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/136): getMyLocation does not wait for GPS permission dialog on iOS
* Improve [#151](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/151): Show marker after loading icon image
* Bug fix [#152](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/152): The size property does not match Android and iOS
* Bug fix [#153](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/153): marker locates when map.addMarker({ visible: false })
* Add [#156](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/156): Plugin version check

## Version 1.1.3 - Jul 2014
* Bug fix [#86](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/86): Marker infoWindow alignment inconsistency
* Add [#105](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/105): Add [BaseClass](./BaseClass)
* Bug fix [#112](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/112): can't access to camera.target
* Change [#116](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/116): `map.geocode()` is deprecated. Use `[Geocoder](./Geocoder).geocode()` instead.
* Bug fix [#119](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/119): `marker.visible` property does not work.
* Add [#125](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/125): `setVisible()` for [GroundOverlay](./GroundOverlay)
* Add [#126](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/126): `setImage()` for [GroundOverlay](./GroundOverlay)
* Add [#127](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/127): Add `setBounds()` for [GroundOverlay](./GroundOverlay)
* Add [#128](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/128): setOpacity() for [GroundOverlay](./GroundOverlay)
* Bug fix [#129](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/129): The `bearing` option of [GroundOverlay](./GroundOverlay) does not effect in iOS
* Add [#130](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/130): `setBearing()` for [GroundOverlay](./GroundOverlay)
* Add: `setFadeIn()` for TileOverlay

## Version 1.1.2 - Jun 2014
* Add [#94](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/94): `zoom` property for the Map.setOptions, and add `Map.setAllGesturesEnabled(boolean)`
* Bug fix [#95](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/95): iOS7 unsigned long type conversion fix
* Bug fix [#102](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/102): `polyline.setPoints()` causes line to disappear

## Version 1.1.1 - May 2014 (bug fix)
* Bug fix [#78](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/78): `MY_LOCATION_BUTTON_CLICK` does not fire on iOS
* Bug fix [#82](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/82): Marker click not triggered on iOS
* Bug fix [#85](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/85): Info box snippets lose line-feed characters on Android
* Bug fix [#87](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/87): Markers on Android without infoWindow contents still display an infoWindow on Android
* Bug fix [#89](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/89): Marker click not triggered
* Bug fix [#90](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/90): Android plugin, Circle.setVisible not implemented
* Bug fix [#91](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/91): Android plugin, Circle.setRadius doesn't seem to work
* Bug fix [#92](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/92): Some methods are not defined
* Bug fix [#93](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/93): Marker icons on Base64 does not apply the size property (iOS)

## Version 1.1.0 - May 2014
* Add [#48](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/48): Map idle event? **(Only for iOS)**
* Bug fix [#51](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/51): "map is null" - Cordova 3.4.1
* Add [#52](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/52): Map is not hidden when the DOM element is destroyed
* Add [#53](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/53): disableTilt, disableScroll and disableZoom methods?
* Add [#55](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/55): Setting marker icon 'anchor'
* Add [#59](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/59): Extend LatLngBounds and map.fitBounds()
* Bug fix [#61](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/61): NSInvalidArgumentException in Geocoder.m
* Bug fix [#64](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/64): com.google.android.gms.R$string
* Bug fix [#66](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/66): `map.geocode()` callback fail
* Bug fix [#67](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/67): Problem with installing plugin
* Bug fix [#68](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/68): Different behaviors of Marker.setAnchor on Android and iOS
* Bug fix [#69](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/69): `Marker.setAnchor()` is broken on Android
* Bug fix [#70](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/70): (Android) Can't parcel a recycled bitmap
* Add [LatLngBounds](https://github.com/mapsplugin/cordova-plugin-googlemaps/wiki/LatLngBounds) class.
* Change [Marker](./Marker): The `anchor` property is now `infoWindowAnchor`.
* Add [Marker](./Marker): The `setInfoWindowAnchor`, `setIconAnchor` methods.
* Add [Map](./Map): The `isAvailable` method
* Bug fix: some internal errors.

## Version 1.0.11 - May 2014
* Bug fix [#45](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/45): MARKER_CLICK event not firing (urgent)

## Version 1.0.10 - May 2014
* Change: [map.getVisibleRegion()](https://github.com/mapsplugin/cordova-plugin-googlemaps/wiki/Map) passes LatLngBounds to the callback.
* Bug fix [#36](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/36): iOS 6 Closebar not fully visible
* Bug fix [#44](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/44): bounds.contains(latLng) is missing.

## Version 1.0.9 - May 2014
* Add: navigation (https://github.com/mapsplugin/cordova-plugin-googlemaps/wiki/External-Service)
* Add: [map.getVisibleRegion()](https://github.com/mapsplugin/cordova-plugin-googlemaps/wiki/Map)
* Bug fix [#36](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/36): iOS 6 Closebar not fully visible
* Bug fix [#38](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/38): Zoom to group of points

## Version 1.0.8 - May 2014
* Aim to bug fix [#29](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/29): IOS installation build error: 'GoogleMaps/GoogleMaps.h' file not found

## Version 1.0.7 - May 2014
* Add: embeddable map ([see the example](https://github.com/mapsplugin/cordova-plugin-googlemaps/tree/master/example/v1.0.7-example))
* Add: [map.setVisible()](https://github.com/mapsplugin/cordova-plugin-googlemaps/wiki/Map)
* Add: [map.clear()](https://github.com/mapsplugin/cordova-plugin-googlemaps/wiki/Map)
* Add: [map.refreshLayout()](https://github.com/mapsplugin/cordova-plugin-googlemaps/wiki/Map)
* Add: [map.toDataURL()](https://github.com/mapsplugin/cordova-plugin-googlemaps/wiki/Map)
* Add: [map.setDiv()](https://github.com/mapsplugin/cordova-plugin-googlemaps/wiki/Map)

## Version 1.0.6 - April 2014
* Bug fix [#17](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/17): Can not remove polygon
* Change: Geocoder of reverse geocoding in iOS uses Google's one.
* Add: [map.kmlOverlay()](https://github.com/mapsplugin/cordova-plugin-googlemaps/wiki/KmlOverlay)

## Version 1.0.5 - April 2014
* Bug fix [#15](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/15): RemoveListener does not work correctly.

## Version 1.0.4 - April 2014
* Add: [#11](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/11) Map_CLOSE event will be fired when the map is closed.
* Change: Google Maps SDK for iOS version 1.7.2 will be installed automatically. You don't need to download Google Maps SDK for iOS manually anymore.

## Version 1.0.3 - April 2014
* Bug fix [#8](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/8): Unable to add other Cordova plugin
* Bug fix [#6](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/6): iOS - Compilation error for /platforms/ios/HelloMap/Plugins/plugin.google.maps/GoogleMaps.m
* Bug fix [#5](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/5): Back button on Android closes the whole app after map init
* Bug fix [#4](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/4): Don't install in android
* Bug fix [#3](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/3): (Android)Progress bar is not shown before the license dialog is show
* Change: The map dialog now is displayed as full screen.
* Bug fix: small bugs

## Version 1.0.2 - January 2014
* Add feature: addEventListenerOnce() and once() methods for event listening only one time.
* Add feature: The icon and title options accept Base64 encoded image data.
* Change: animateCamera() does not use the second argument for duration. Instead of that, you need to specify the value with duration option.
* Adjust the dialog design
* Bug fix: The snippet option of addMarker() method does not work when the title option has multiple lines.
* Bug fix: Image size is incorrect in Android.
* Bug fix: removeEventListener() and off() methods does not work.
* Bug fix: The snippet string is too big on Nexus 5.


## Version 1.0.1 - January 2014
* The icon property of the addMarker() method accepts both the URL as String and the URL with size property as JSON.
* The title property of the addMarker() method accepts multiple lines.
