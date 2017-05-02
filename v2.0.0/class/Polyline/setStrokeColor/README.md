# marker.setStrokeColor()

You can change the polyline color.

```html
<div id="map_canvas"></div>
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
map.addEventListener(plugin.google.maps.event.MAP_READY, function() {

  // Add a polyline
  map.addPolyline({
    points: AIR_PORTS,
    'color' : '#AA00FF',
    'width': 10,
    'geodesic': true,
    'clickable': true // default = false
  }, function(polyline) {

    // Change the polyline color.
    var idx = 0;
    polyline.on(plugin.google.maps.event.POLYLINE_CLICK, function(latLng) {
      polyline.setStrokeColor(["green", "blue", "orange", "red"][idx++]);
      idx = idx > 3 ? 0 : idx;
    });

  });

});
```

![](image.gif)
