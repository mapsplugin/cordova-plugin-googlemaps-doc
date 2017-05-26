# Release notes v2.0-beta2

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
