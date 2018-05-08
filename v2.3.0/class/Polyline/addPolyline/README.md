# map.addPolyline()

Adds a polygon on the map.

```
(from v2.3.0 to current)
var polyline = map.addPolyline(options)

(from v2.0.0 to current)
map.addPolyline(options, callback);
```

## Options

params         | type          | description
---------------|---------------|-----------------------------------------------------------------
points         | ILatLng[]     | The ordered sequence of coordinates.
geodesic       | boolean       | (optional) set `true`, edges of the polygon are interpreted as geodesic and will follow the curvature of the Earth.
color?         | string        | (optional) stroke color (HTML colors)
width?         | number        | (optional) stroke width in pixels
clickable?     | boolean       | (optional) set `true` to receive the `POLYLINE_CLICK` event
visible?       | boolean       | (optional) set `false` to create invisible polygon
-------------------------------------------------------------------------------------------------

## Demo code

```html
<div  id="map_canvas"></div>
```

```js
var HND_AIR_PORT = {lat: 35.548852, lng: 139.784086};
var SFO_AIR_PORT = {lat: 37.615223, lng: -122.389979};
var HNL_AIR_PORT = {lat: 21.324513, lng: -157.925074};
var AIR_PORTS = [
  HND_AIR_PORT,
  HNL_AIR_PORT,
  SFO_AIR_PORT
];

var mapDiv = document.getElementById("map_canvas");

// Create a map with specified camera bounds
var map = plugin.google.maps.Map.getMap(mapDiv, {
  camera: {
    target: AIR_PORTS
  }
});

// Add a polyline
var polyline = map.addPolyline({
  'points': AIR_PORTS,
  'color' : '#AA00FF',
  'width': 10,
  'geodesic': true
});

```

![](image.png)
