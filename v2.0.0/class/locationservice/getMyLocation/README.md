# LocationService.getMyLocation()

Get the current device location. You can get the location **without creating a map**.

```html
<div class="map" id="map_canvas"></div>
```

```js
// Get the current device location "without map"
var option = {
  enableHighAccuracy: true // use GPS as much as possible
};
plugin.google.maps.LocationService.getMyLocation(option, function(location) {

  // Create a map with the device location
  var mapDiv = document.getElementById('map_canvas');
  var map = plugin.google.maps.Map.getMap(mapDiv, {
    'camera': {
      target: location.latLng,
      zoom: 16
    }
  });

  map.addEventListener(plugin.google.maps.event.MAP_READY, function() {

    // Add a marker
    var text = ["Current your location:\n",
      "latitude:" + location.latLng.lat.toFixed(3),
      "longitude:" + location.latLng.lng.toFixed(3),
      "speed:" + location.speed,
      "time:" + location.time,
      "bearing:" + location.bearing].join("\n");

    map.addMarker({
      title: text,
      position: location.latLng
    }, function(marker) {
      marker.showInfoWindow();
    });

  });
});
```

![](image.gif)
