# groundOverlay.remove()

Remove the ground overlay.

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
    'opacity': 0.5,
    'clickable': true
  }, function(groundOverlay) {

    // Show a virtual dialog (loader.js)
    showVirtualDialog(mapDiv, "Click on the ground overlay!");

    // Catch the circle_CLICK event
    groundOverlay.on(plugin.google.maps.event.GROUND_OVERLAY_CLICK, function() {

      // Remove the circle
      groundOverlay.remove();

    });
  });

});
```

![](image.gif)
