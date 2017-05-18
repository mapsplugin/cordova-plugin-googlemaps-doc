# Release notes v2.0-beta2

## May/17/2017

### Update

- **Important** [Map.getVisibleRegion()](../../class/Map/getVisibleRegion/README.md) is changed.

## May/16/2017

### Update

- Small update in order to prevent null pointer crash

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
