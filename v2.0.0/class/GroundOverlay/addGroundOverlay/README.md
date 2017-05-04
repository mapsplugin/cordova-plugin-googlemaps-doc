# map.addGroundOverlay()

The map.addGroundOverlay() method adds a ground overlay on the map.

```html
<div id="map_canvas"></div>
```

```js
var bounds = [
  {"lat": 40.712216, "lng": -74.22655},
  {"lat": 40.773941, "lng": -74.12544}
];
var mapDiv = document.getElementById("map_canvas");
var map = plugin.google.maps.Map.getMap(mapDiv, {
  camera: {
    target: bounds
  }
});

map.addEventListener(plugin.google.maps.event.MAP_READY, function() {

  // Add ground overlay
  map.addGroundOverlay({
    'url': "../images/newark_nj_1922.jpg",
    'bounds': bounds,
    'opacity': 0.5
  }, function(groundOverlay) {

    // To do something...

  });

});
```

![](image.png)
