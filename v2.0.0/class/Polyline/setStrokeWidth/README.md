# polyline.setStrokeWidth()

Change the polyline stroke width.

```html
<div id="map_canvas"></div>
```

```js
var flightPlanCoordinates = [
  {lat: 37.772, lng: -122.214},
  {lat: 21.291, lng: -157.821},
  {lat: -18.142, lng: 178.431},
  {lat: -27.467, lng: 153.027}
];

var mapDiv = document.getElementById("map_canvas");

// Create a map with specified camera bounds
var map = plugin.google.maps.Map.getMap(mapDiv, {
  camera: {
    target: flightPlanCoordinates
  }
});
map.addEventListener(plugin.google.maps.event.MAP_READY, function() {

  // Add a polyline
  map.addPolyline({
    points: flightPlanCoordinates,
    'color' : '#AA00FF',
    'width': 10,
    'geodesic': true,
    'clickable': true // default = false
  }, function(polyline) {

    // Change the polyline color.
    var idx = 0;
    polyline.on(plugin.google.maps.event.POLYLINE_CLICK, function(latLng) {

      // Change width of the polyline.
      polyline.setStrokeWidth(20);

    });

  });

});
```

![](image.gif)
