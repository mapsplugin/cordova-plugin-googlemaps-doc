:warning: **This document is aim for older versions (from 2.0.0 to 2.2.9).
Document for new version is https://github.com/mapsplugin/cordova-plugin-googlemaps-doc/blob/master/v2.6.0/README.md**

# event: GROUND_OVERLAY_CLICK

The GROUND_OVERLAY_CLICK event is fired when you click on the ground overlay.

```js
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
    'clickable': true  // default = false
  }, function(groundOverlay) {

    // Catch the GROUND_OVERLAY_CLICK event
    groundOverlay.on(plugin.google.maps.event.GROUND_OVERLAY_CLICK, onClick);

  });

});
function onClick(latLng) {

  // Change the opacity of the ground overlay.
  var groundOverlay = this;
  groundOverlay.setOpacity(1.0);

  var map = groundOverlay.getMap();
  map.addMarker({
      position: latLng,
      title: "You clicked here on the ground overlay!",
      snippet: latLng.toUrlValue()
  }, function(marker) {
      marker.showInfoWindow();
  });

}
```

![](image.gif)
