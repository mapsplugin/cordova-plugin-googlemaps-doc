# Release notes v2.0-beta2

## Jul/29/2017

- (Android) Bug fix: tileOverlay.remove() causes null pointer error [#1597](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/1597)

## Jul/27/2017

- (iOS) Bug fix: MAP_READY event is not fired when camera options are specified [#1594](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/1594)

- (iOS) Bug fix: HtmlInfoWindow does not follow the marker if you click on the same marker twice times

- Update: (iOS) Pan the map when you tap a marker even it is already tapped before [#1589](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/1589)

## Jul/25/2017

- (iOS) Bug fix: MAP_READY event is not fired when camera options are specified [#1587](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/1587)

- (iOS) Bug fix: MAP_READY event is not fired when the app is launched in offline at the first time  [#1577](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/1577)

- (JS) Bug fix: The opacity = 0 of map.addTileOverlay() does not work [#1577](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/1577)

- (Android/iOS) Update: change the default tile size of map.addTileOverlay() from 256x256 to 512x512
    The reason of this is that the Google Maps SDK for iOS requests strange zoom levels on iOS retina devices.
    Uses 512x512 tile size prevents this issue.
    If you prepare 256x256 tile images, the plugin resizes them automatically, so you don't need to do anything.
    But if you want to keep qualities of map tiles, please use the 512x512.

## Jul/24/2017

- (JS) Bug fix: Cannot read property 'style' of null [#1583](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/1583)

- (iOS) Merge pull req: The debug option of map.addTileOverlay() is always true [#1586](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/1586)

## Jul/20/2017

- (Android/iOS) Bug fix: cordova is undefined error

- (Android/iOS) Bug fix: normal infoWindow is not displayed when you don't set the title and the snippet properties and you set either of them later

- (Android/iOS) Bug fix: map is not displayed when the camera options is not specified at the map.getMap() [#1570](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/1570), [#1573](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/1573)

- (Android/iOS) Bug fix: different version code was mixed (sorry!!)

- (Android/iOS) Bug fix: useHtmlInfoWnd does not work correctly


## Jul/19/2017

- (JS) Bug fix: Ionic 2 - Slow DOM manipulation  [#1522](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/1522)

- (JS) Bug fix: the plugin keeps the information of removed elements

- (JS) Add: noNotify option for `insertAt`, `setAt`, `removeAt`, `push`, `pop`, and `empty` methods of BaseArrayClass

- (JS) Add: `indexOf`, `filter`, `reverse`, and `sort` methods into BaseArrayClass

- (Android/iOS) Bug fix: Polyline.setPoints(), Polygon.setPoints() , Polygon.setHoles() do not work sometime [#1547](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/1547)

- (Android/iOS) Update: Hide map view until the map camera is configured when the camera option is given to the map.getMap() [#1570](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/1570)

- (JS) Update: `map.clear()` method accepts callback [#1569](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/1569)

- (ionic) Send a pull request to ionic wrapper plugin.
[pull request #1815](https://github.com/ionic-team/ionic-native/pull/1815)

## Jul/18/2017

- (JS) update: Suspend the view positioning when the map div(s) is/are not displayed  [#1522](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/1522)

- (JS) Bug fix: iOS app crash with map.addTileOverlay  [#1565](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/1565)

- (JS) Bug fix: HtmlInfoWindow is displayed in out side of the map view  [#1561](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/1561)

## Jul/17/2017

- (JS) update: Disable background, background-color, and background-image CSS mandatory.

## Jul/16/2017

- (JS) Bug fix: Child elements of SVG causes the error "node.classname Error" [#1558](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/1558)

- (JS) Bug fix: HTMLInfoWindow stays after removing it's marker [#1556](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/1556)

- (JS) Update: event listener performance has been improved

## Jul/14/2017

- (JS) Bug fix: The calculation of DOM tree was incorrect.
The previous code was not perfect. You might not click on the map some very particular cases [#1541](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/1541).

- (Android/iOS) Stop DOM inspection when you interact with map [fd465ff](https://github.com/mapsplugin/cordova-plugin-googlemaps/commit/fd465ffc61c25dfcdc15c574d3f572a11d597f06).

- (JS) Bug fix: When you create multiple instances of HTMLInfoWindow, previous HTMLInfoWindow does not close when open another HTMLInfoWindow. [#1555](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/1555)

## Jul/13/2017

- (JS) Bug fix: Can not click HtmlInfoWindow [#1522](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/1552)

- (JS) Bug fix: Map is not displayed when you go back from another page using the back button of Android.
In order to resolve this issue, the plugin catches the `backbutton` event all the time.
But other plugins or your JS code might want to catch the `backbutton` event.
In order to passes the event, the maps plugin fires the `plugin_backbutton` event alternatively.
(But this is for just in case)

- (JS) Update: Prevent the "plugin is undefined" error [0f55e49](https://github.com/mapsplugin/cordova-plugin-googlemaps/commit/0f55e4937b495bb377840efac377a7deceb2c895)
Hopefully this commit helps for [#1482](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/1482)

## Jul/11/2017

- (iOS) Bug fix: Map is not displayed with Google Maps SDK for iOS 2.3.3

## Jul/9/2017

- (JS) Add: INFO_OPEN and INFO_CLOSE event for HtmlInfoWindow

## Jul/7/2017

- (JS) Bug fix: [domID is incorrect](https://github.com/mapsplugin/cordova-plugin-googlemaps/commit/66294c1e9b92a172b967b5e53d828d666912666d#commitcomment-22986199)

## Jul/5/2017

### Update

- (ionic) The nav-decor class blocks the maps plugin [ionic/#8252](https://github.com/ionic-team/ionic/issues/8252), [ionic/#7205](https://github.com/ionic-team/ionic/issues/7205)

- (Android 4.4) [DOM manipulation is slow when the map is not displayed](https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/1522)

- (iOS SDK) [cordova-googlemaps-plugin-sdk](https://github.com/mapsplugin/cordova-plugin-googlemaps-sdk) upgrades the google maps sdk for iOS version to 2.3.0

## Jun/24/2017

### Bug fix

- (Android/iOS) The depth calculation of dom tree is incorrect. (Additional patch)


## Jun/23/2017

### Bug fix

- (Android/iOS) When you register multiple event listers for one event name, the event listers the second and after are never executed.

```js
map.addMarker({
  ...
  mydata: "hello"
}, function(marker) {

  marker.on("mydata_changed", function(oldValue, newValue) {
    console.log("lister 1: " + oldValue + " -> " + newValue);  // <-- executed
  });

  marker.on("mydata_changed", function(oldValue, newValue) {
    console.log("lister 2: " + oldValue + " -> " + newValue);  // <-- never executed (bug)
  });

  marker.set("mydata", "world");

});

```

- (Android/iOS) The depth calculation of dom tree is incorrect.

## May/31/2017

### Add

- [MAP_LOADED event](../../class/Map/MAP_LOADED/README.md)

---

## May/25/2017

### Bug fix

- (iOS) App crashes when infoWindow is closed.

---

## May/24/2017

### Update

- **Important** [map.addTileOverlay()](../../class/TileOverlay/README.md) is changed.
You can use the `getTile()` callback instead of the `tileUrlFormat` property.
This allows you to have lots of freedom.

```js
// Before
//
// The url format is limited only three variables : <x>, <y>, and <zoom>
map.addTileOverlay({
  tileUrlFormat: "../images/map-for-free/<zoom>_<x>-<y>.gif"
}, function(tileOverlay) {

});
```

```js
// After
//
// You can generate any url.
map.addTileOverlay({

  getTile: function(x, y, zoom) {
    return "../images/map-for-free/" + zoom + "_" + x + "-" + y + ".gif"
  }
}, function(tileOverlay) {

});
```

### Bug fix

- (Android) Marker image caching mechanism does not work

----

## May/22/2017

### Update

- **Important** [HtmlInfoWindow()](../../class/HtmlInfoWindow/README.md) is changed.
You should not use the `infoWindow` option of the marker. New way is more simple.

```js
var htmlInfoWindow = new plugin.google.maps.HtmlInfoWindow();

var html = "&lt;img src='./House-icon.png' width='64' height='64' &gt;" +
           "&lt;br&gt;" +
           "This is an example";
htmlInfoWindow.setContent(html);

map.addMarker({
  position: {lat: 0, lng: 0}
}, function(marker) {

  marker.on(plugin.google.maps.event.MARKER_CLICK, function() {
    htmlInfoWindow.open(marker);
  });
  marker.trigger(plugin.google.maps.event.MARKER_CLICK);

});
```

### Bug fix

- [Map.fromLatLngToPoint()](../../class/Map/fromLatLngToPoint/README.md) and [Map.PointTofromLatLng()](../../class/Map/PointTofromLatLng/README.md) methods return incorrect position sometimes

----

## May/17/2017

### Update

- **Important** [Map.getVisibleRegion()](../../class/Map/getVisibleRegion/README.md) is changed.

----

## May/16/2017

### Update

- Small update in order to prevent null pointer crash

----

## May/10/2017

### Add

- [MAP_DRAG_START, MAP_DRAG, and MAP_DRAG_END](../../class/Map/MAP_DRAG_EVENTS/README.md) events
- You can get the event data in event listener.

```js
map.on(plugin.google.maps.event.MAP_DRAG_START, onMapDragEvents);
map.on(plugin.google.maps.event.MAP_DRAG, onMapDragEvents);
map.on(plugin.google.maps.event.MAP_DRAG_END, onMapDragEvents);

function onMapDragEvents() {
  console.log("---> event = " + this.event.type);
}
```

- Attach the date to version number.

```
> $ cordova plugin list

com.googlemaps.ios 2.2.0 "Google Maps SDK for iOS"
cordova-plugin-googlemaps 2.0.0-beta2-20170510-1500 "cordova-plugin-googlemaps"
                                      ^^^^^^^^^^^^^
```

----

## May/9/2017

### Add

- [map.animateCameraZoomIn()](../../class/Map/animateCameraZoomIn/REAMDE.md),
[map.animateCameraZoomOut()](../../class/Map/animateCameraZoomOut/REAMDE.md),
[map.moveCameraZoomIn()](../../class/Map/moveCameraZoomIn/REAMDE.md), and
[map.moveCameraZoomOut()](../../class/Map/moveCameraZoomOut/REAMDE.md)

- [BaseArrayClass.forEach(fn, callback)](../../class/BaseArrayClass/forEach/README.md)

- [BaseArrayClass.map(fn, callback)](../../class/BaseArrayClass/map/README.md)

### Update

- [map.getVisibleRegion()](../../class/Map/getVisibleRegion/README.md) method returns the values synchronously.

```js
// Before
map.getVisibleRegion(function(latLngBounds) {

});

// After
var latLngBounds = map.getVisibleRegion();
```

### Bug fix

- marker.remove() (and other overlays) does not work sometimes.

- small bugs are fixed
