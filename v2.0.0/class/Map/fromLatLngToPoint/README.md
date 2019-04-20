:warning: **This document is aim for older versions (from 2.0.0 to 2.2.9).
Document for new version is https://github.com/mapsplugin/cordova-plugin-googlemaps-doc/blob/master/v2.6.0/README.md**

# map.fromLatLngToPoint()

Convert the unit from LatLng to the pixels from the left/top of the map div.

```html
<div class="map" id="map_canvas"></div>
```

```js
var div = document.getElementById("map_canvas");
var map = plugin.google.maps.Map.getMap(div);
map.one(plugin.google.maps.event.MAP_READY, function() {

  var center = map.getCameraTarget();

  map.addMarker({
    position: center,
    draggable: true,
    title: "Drag me!"
  }, function(marker) {
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

  });
});
```

![](image.gif)
