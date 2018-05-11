# Release notes version 2.3.0

Featured points
---
- [New feature: StreetView](#new-feature-streetview)
- [A callback is no longer required for the most part.](#a-callback-is-no-longer-required-for-the-most-part)
  - [What’s the trick?](#this-is-a-big-breaking-change)
  - [Which methods are available with this new style?](#which-methods-are-available-with-this-new-style)
- [`Promise` is supported instead of `callback`](#promise-is-supported-instead-of-callback)

------------------------------------------------------------------------

### New feature: StreetView

I am proud to introduce you to a new plugin feature: `StreetView`!
You can create a street view panorama container as well as a map container.

```
var div = document.getElementById("pano_canvas1");
var panorama = plugin.google.maps.StreetView.getPanorama(div, {
  camera: {
    target: {lat: 42.345573, lng: -71.098326}
  }
});
```

![](./streetview.png)

---

### A `callback` is no longer required for the most part.

![](big_change.png)

The `cordova-plugin-googlemaps` plugin does not **require** the `callback` anymore with **most of the methods**.

Previously you had to wait for the `MAP_READY` event before you could add a marker like this:

```js
var map = plugin.google.maps.Map.getMap(mapDiv, {
    camera: {
      target: {lat: -33.87365, lng: 151.20689},
      zoom: 16
    }
  });
map.one(plugin.google.maps.event.MAP_READY, function() {

  map.addMarker({
    position: {lat: -33.87365, lng: 151.20689}
  }, function(marker) {
    marker.setAnimation(plugin.google.maps.Animation.BOUNCE);
  });

});
```

Now with version 2.3.0, you can simply write the code like this!

```js
var map = plugin.google.maps.Map.getMap(mapDiv, {
    camera: {
      target: {lat: -33.87365, lng: 151.20689},
      zoom: 16
    }
  });

var marker = map.addMarker({
  position: {lat: -33.87365, lng: 151.20689}
});

marker.setAnimation(plugin.google.maps.Animation.BOUNCE);
```

The coding is simpler now because you can chain methods!

```js
var map = plugin.google.maps.Map.getMap(mapDiv, {
    camera: {
      target: {lat: -33.87365, lng: 151.20689},
      zoom: 16
    }
  });

var marker = map.addMarker({
    position: {lat: -33.87365, lng: 151.20689}
  })
  .setAnimation(plugin.google.maps.Animation.BOUNCE);
```

![](example.gif)

### What's the trick?

`Map`, `StreetView`, and `Overlay (Marker, Polygon, Polygline, Circle, TileOverlay, and GroundOverlay)` have own internal command queue.
The instances of those classes just stack your statements into the queue when they are fully ready to use, then, it is pulled from the queue and executed.

![](mechanism.png)

You can still write your code using the previous `callback` style.
The `callback` is invoked when the instance is fully ready.
_It is the safest way._

```js
map.addMarker({
    position: {lat: -33.87365, lng: 151.20689}
  }, function(marker) {
    // The marker is fully ready.
  });
```

But without the callback, you can write your code simply using ;)
```js
var marker = map.addMarker({
  position: {lat: -33.87365, lng: 151.20689}
});
```

#### Which methods are available with this new style?

  - Map.getMap()
    - you can skip `MAP_READY` event, except if you use `map.getVisibleRegion()`.

  - StreetView.getPanorama()
    - you can skip `PANORAMA_READY` event

  - map.addMarker()
  - map.addCircle()
  - map.addPolygon()
  - map.addPolyline()
  - map.addGroundOverlay()
  - map.addMarkerCluster()
  - map.addTileOverlay()

------------------------------------------------------------------------

### `Promise` is supported instead of `callback`

The most of `setXXXX()` methods work without `callback`.
However if you use `getXXXX()`, you need to pay attention to your code.

For example, the code below returns different value.

**code 1 : incorrect code example**
```js

var visibleRegion1 = map.getVisibleRegion();

map.animateCamera({
  target: {lat: ..., lng: ...},
  zoom: 15
});

var visibleRegion2 = map.getVisibleRegion();

// You may expect `false`, but actually `true`.
// Because this code is executed BEFORE map.animateCamera() is done.
console.log(visibleRegion1.toUrlValue() === visibleRegion2.toUrlValue());
```

**code 2 : correct code example**

```js

var visibleRegion1 = map.getVisibleRegion();

map.animateCamera({
  target: {lat: ..., lng: ...},
  zoom: 15
}, function() {
  // This callback is executed AFTER map.animateCamera() is done.

  var visibleRegion2 = map.getVisibleRegion();

  // Output: `false`
  console.log(visibleRegion1.toUrlValue() === visibleRegion2.toUrlValue());
});

```

Like the above code, if you need to know the status of after statement, you still have to use `callback`.

As of cordova-plugin-googlemaps v2.3.0, you can use `Promise` instead of `callback`.


**code 3 : correct code example with Promise**

```js
var visibleRegion1 = map.getVisibleRegion();

map.animateCamera({
  target: {lat: ..., lng: ...},
  zoom: 15
})
.then(function()) {

  // This callback is executed AFTER map.animateCamera() is done.
  var visibleRegion2 = map.getVisibleRegion();

  // Output: `false`
  console.log(visibleRegion1.toUrlValue() === visibleRegion2.toUrlValue());
});
```
