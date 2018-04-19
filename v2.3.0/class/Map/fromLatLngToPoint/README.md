# map.fromLatLngToPoint()

Convert the unit from LatLng to the pixels from the left/top of the map div.

```html
<div class="map" id="map_canvas"></div>
```

```js
var div = document.getElementById("map_canvas");
var map = plugin.google.maps.Map.getMap(div);

var center = map.getCameraTarget();

var marker = map.addMarker({
  position: center,
  draggable: true,
  title: "Drag me!"
});

marker.showInfoWindow();

// Catch the marker drag event
marker.on(plugin.google.maps.event.MARKER_DRAG_END, function(latLng) {
  // LatLng -> Point
  map.fromLatLngToPoint(latLng, function(point) {

    // Show on the marker
    marker
      .setTitle(
        "left : " + point[0].toFixed(1) + "px\n" + "top : " + point[1].toFixed(1) + "px"
      )
      .showInfoWindow();
  });

});
```

![](image.gif)
