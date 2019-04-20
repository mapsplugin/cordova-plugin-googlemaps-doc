:green_heart: This is the latest document.

# encoding.encodePath()

Encodes a sequence of [LatLng](../../../LatLng/README.md)s into an encoded path string.

```
plugin.google.maps.geometry.encoding.encodePath(path);
```

## Parameters

name           | type          | description
---------------|---------------|---------------------------------------
path           | ILatLng[]     | Array of ILatLng
-----------------------------------------------------------------------

## Demo code

```html
<div  id="map_canvas"></div>
```

```js
var GORYOKAKU_POINTS = [
  {"lat": 41.79883, "lng": 140.75675},
  {"lat": 41.799240000000005, "lng": 140.75875000000002},
  {"lat": 41.797650000000004, "lng": 140.75905},
  {"lat": 41.79637, "lng": 140.76018000000002},
  {"lat": 41.79567, "lng": 140.75845},
  {"lat": 41.794470000000004, "lng": 140.75714000000002},
  {"lat": 41.795010000000005, "lng": 140.75611},
  {"lat": 41.79477000000001, "lng": 140.75484},
  {"lat": 41.79576, "lng": 140.75475},
  {"lat": 41.796150000000004, "lng": 140.75364000000002},
  {"lat": 41.79744, "lng": 140.75454000000002},
  {"lat": 41.79909000000001, "lng": 140.75465},
  {"lat": 41.79883, "lng": 140.75673}
];

var mapDiv = document.getElementById("map_canvas");
var map = plugin.google.maps.Map.getMap(mapDiv, {
  camera: {
    target: GORYOKAKU_POINTS
  }
});

showVirtualDialog(mapDiv, "Click on the polygon!");

var encodedPath = plugin.google.maps.geometry.encoding.encodePath(GORYOKAKU_POINTS);

var polygon = map.addPolygon({
  "points": GORYOKAKU_POINTS,
  "clickable": true
});

polygon.on(plugin.google.maps.event.POLYGON_CLICK, function() {
  alert("Encoded path: \n" + encodedPath);
});

```

![](image.gif)
