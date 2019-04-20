:warning: **This document is aim for older versions (from 2.0.0 to 2.2.9).
Document for new version is https://github.com/mapsplugin/cordova-plugin-googlemaps-doc/blob/master/v2.6.0/README.md**

# groundOverlay.setBearing()

Set the ground overlay rotation angle. The value range is from 0 to 360.

```html
<div id="map_canvas">
  <span class="smallPanel">
  Bearing: 0.0&nbsp;<input id="bearingRange" type="range" min="0" max="360" step="10" value="0">&nbsp;360
  </span>
</div>

```js
var bounds = [
  {"lat": 40.712216, "lng": -74.22655},
  {"lat": 40.773941, "lng": -74.12544}
];
var div = document.getElementById("map_canvas");
var map = plugin.google.maps.Map.getMap(div, {
  camera: {
    target: bounds,
    padding: 40
  }
});
map.one(plugin.google.maps.event.MAP_READY, function() {

  // All gestures (such as pinch-zooming) are disabled.
  map.setAllGesturesEnabled(false);

  // Add ground overlay
  map.addGroundOverlay({
    'url': "../images/newark_nj_1922.jpg",
    'bounds': bounds,
    'opacity': 0.5
  }, function(groundOverlay) {

    var range = document.getElementById("bearingRange");
    range.addEventListener("change", function() {

      // Set the ground overlay rotation angle.
      groundOverlay.setBearing(this.value);
    });

    // Set the current value as rotation angle.
    groundOverlay.setBearing(range.value);

  });
});
```

![](image.gif)
