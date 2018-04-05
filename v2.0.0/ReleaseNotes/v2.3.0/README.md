# Release notes version 2.3.0

---
Featured points
------------------------------------------------------------------------

### New feature: StreetView

I'm grad to introduce you a new feature `StreetView`!
You can create street view panorama container as well as Map.

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

### No longer required `callback` (mostly)

# _This is a big breaking change!_

The `cordova-plugin-googlemaps` does not **require** the `callback` anymore on the **most methods**.

For example, you had to wait the `MAP_READY` event before adding a marker.

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

From the v2.3.0, you can simply write the code!

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

More simple code, you can chain the methods.

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

#### What's the trick?

`Map`, `StreetView`, and `Overlay (Marker, Polygon, etc...)` have own command queue.
Until the instance is fully ready, these classes just stock your statements into the queue.
When the instance is ready, the next statement is executed.

![](mechanism.png)

You can still write with the `callback` style.
The `callback` is involved when the instance is fully ready.
_It is safe way._

```js
map.addMarker({
    position: {lat: -33.87365, lng: 151.20689}
  }, function(marker) {
    // marker is fully ready.
  });
```

But without callback, you can write your code simply ;)
```js
var marker = map.addMarker({
  position: {lat: -33.87365, lng: 151.20689}
});
```

#### Which methods are available with this style?

- Map.getMap()
- StreetView.getPanorama()
- map.addMarker()
- map.addCircle()
- map.addPolygon()
- map.addPolyline()
- map.addGroundOverlay()
- map.addMarkerCluster()
- map.addTileOverlay()

---

Working logs
------------------------------------------------------------------------

https://github.com/mapsplugin/cordova-plugin-googlemaps/compare/2285dc4ea45cc31210e7997b7d4fd0083c9f08b4...621f5305847a8ec5757f8129c5f34b2fca81bfc2

![](working_logs.png)
